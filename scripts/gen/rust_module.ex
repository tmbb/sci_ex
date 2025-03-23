defmodule SciEx.Gen.RustModule do
  defstruct prefix: nil,
            bits: nil,
            type: nil,
            name: nil,
            n_dims: 6,
            extra_imports: [],
            functions: []

  alias SciEx.Gen.{RustParser, Vectorizer, Injector}

  defp bulk_assign_type_to_self(functions, type) do
    Enum.map(functions, fn f -> Vectorizer.assign_type_to_self(f, type) end)
  end

  defp bulk_rename_self(functions, new_name) do
    Enum.map(functions, fn f -> Vectorizer.rename_self(f, new_name) end)
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

    vectorized_functions = Vectorizer.vectorize_functions(rust_module, functions)

    %{rust_module | functions: rust_module.functions ++ vectorized_functions}
  end

  def to_rust_code_iodata(rust_module) do
    Vectorizer.vectorized_functions_to_rust_code_iodata(
      rust_module,
      rust_module.functions
    )
  end

  def to_rust_file(rust_module, path) do
    code = to_rust_code_iodata(rust_module)
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

        "  def #{f.ex_function}(#{args}), do: err()\n"
      end

    Injector.inject_between(
      path,
      marker1,
      marker2,
      code_to_inject
    )
  end
end
