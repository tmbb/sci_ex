defmodule SciEx.Gen.RustComplexModule do
  defstruct prefix: nil,
            bits: nil,
            type: nil,
            name: nil,
            n_dims: 6,
            extra_imports: [],
            functions: []

  alias SciEx.Gen.{RustParser, ComplexVectorizer, Injector}

  require EEx

  @external_resource "scripts/rust_generator/templates/sci_ex_test_complex_math_functions_test.rs"

  EEx.function_from_file(
    :def,
    :sci_ex_test_math_functions_test_exs,
    "scripts/rust_generator/templates/sci_ex_test_complex_math_functions_test.exs",
    [:assigns]
  )

  defp bulk_assign_type_to_self(functions, type) do
    Enum.map(functions, fn f -> ComplexVectorizer.assign_type_to_self(f, type) end)
  end

  defp bulk_rename_self(functions, new_name) do
    Enum.map(functions, fn f -> ComplexVectorizer.rename_self(f, new_name) end)
  end

  def bulk_assign_rs_module(functions, rs_module) do
    Enum.map(functions, fn f -> %{f | rs_module: rs_module} end)
  end

  def add_vectorized_functions_from_file(rust_module, path, opts \\ []) do
    filter = Keyword.get(opts, :filter, fn _ -> true end)
    rs_module = Keyword.fetch!(opts, :rs_module)
    assign_type_to_self = Keyword.get(opts, :assign_type_to_self, nil)
    rename_self_to = Keyword.get(opts, :rename_self_to, "arg0")

    functions =
      path
      |> RustParser.extract_functions_from_file!()
      |> bulk_assign_type_to_self(assign_type_to_self)
      |> bulk_rename_self(rename_self_to)
      |> bulk_assign_rs_module(rs_module)
      |> Enum.filter(filter)

    vectorized_functions = ComplexVectorizer.vectorize_functions(rust_module, functions)

    %{rust_module | functions: rust_module.functions ++ vectorized_functions}
  end

  def to_rust_code_iodata(rust_module) do
    ComplexVectorizer.vectorized_functions_to_rust_code_iodata(
      rust_module,
      rust_module.functions
    )
  end

  def to_rust_file(rust_module, path) do
    code = to_rust_code_iodata(rust_module)
    File.write!(path, code)
  end

  def scalar_function?(function) do
    Enum.all?(function.vectorization, fn ty -> ty == :scalar end)
  end

  def float_type?(arg) do
    arg.type == "f32" or arg.type == "f64" or String.contains?(arg.type, "Float")
  end

  def complex_type?(arg) do
    String.contains?(arg.type, "Complex")
  end

  def maybe_override(overrides, name) do
    Map.get(overrides, name) || name
  end

  def to_ex_test_file(rust_module, path, opts \\ []) do
    overrides = Keyword.get(opts, :overrides, %{})
    exclude = MapSet.new(Keyword.get(opts, :exclude, []))

    functions =
      rust_module.functions
      |> Enum.uniq_by(fn f -> f.rs_function end)
      |> Enum.filter(fn f -> length(f.arguments) == 1 end)
      |> Enum.filter(fn %{arguments: [arg]} -> float_type?(arg) or complex_type?(arg) end)
      |> Enum.reject(fn f -> f.rs_function in exclude end)
      |> Enum.map(fn f -> %{f | rs_function: maybe_override(overrides, f.rs_function)} end)

    code = sci_ex_test_math_functions_test_exs(
      functions: functions,
      bits: rust_module.bits
    )

    File.write!(path, code)
  end

  def to_elixir_nif_file(rust_module, block_name, path) do
    marker1 = "  # %% BEGIN-GENERATED:#{block_name} %%\n"
    marker2 = "  # %% END-GENERATED:#{block_name} %%\n"

    code_to_inject =
      for f <- rust_module.functions do
        args =
          f.arguments
          |> Enum.map(fn arg -> "_#{arg.name}" end)
          |> Enum.intersperse(", ")

        if scalar_function?(f) do
          "  def #{f.ex_function}(#{args}), do: err()\n"
        else
          "  def #{f.ex_function}(#{args}, _parallel), do: err()\n"
        end
      end

    Injector.inject_between(
      path,
      marker1,
      marker2,
      code_to_inject
    )
  end
end
