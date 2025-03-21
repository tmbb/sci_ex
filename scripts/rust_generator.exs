defmodule SciEx.RustGenerator do
  import NimbleParsec

  # Write a parser to extract the function declarations
  # from a rust file. This parser allows us to save
  # a lot of work when adding functions in bulk.

  def ignore_naked_strings(list) do
    Enum.reject(list, &is_binary/1)
  end

  whitespace = ascii_string([?\s, ?\t, ?\n, ?\r], min: 1)

  rust_identifier =
    ascii_string([?a..?z, ?A..?Z], 1)
    |> optional(ascii_string([?a..?z, ?A..?Z, ?0..?9, ?_], min: 1))
    |> reduce({Enum, :join, [""]})

  rust_function_name = rust_identifier
  rust_type_name = rust_identifier
  rust_module_name = rust_identifier

  any_char = utf8_char([])

  skip_ws = fn combinators ->
    Enum.reduce(combinators, empty(), fn comb, acc ->
      acc
      |> concat(ignore(optional(whitespace)))
      |> concat(comb)
    end)
  end

  argument = skip_ws.([
    string(","),
    unwrap_and_tag(rust_identifier, :name),
    string(":"),
    unwrap_and_tag(rust_identifier, :type)
  ])
  |> reduce({:ignore_naked_strings, []})

  unary_function_declaration =
    skip_ws.([
      string("pub"),
      string("fn"),
      unwrap_and_tag(rust_function_name, :function),
      string("("),
      string("self"),
      tag(repeat(argument), :arguments),
      string(")"),
      string("->"),
      unwrap_and_tag(rust_identifier, :type)
    ])
    |> reduce({:ignore_naked_strings, []})
    |> unwrap_and_tag(:declaration)

  unary_function_declarations = repeat(
    choice([
      unary_function_declaration,
      ignore(any_char)
    ])
  )

  defparsec(:unary_function_declarations, unary_function_declarations)



  defmodule ElementwiseMathFunction do
    defstruct [
      :sci_ex_nif_name,
      :rs_module,
      :rs_function,
      :arg_type,
      :args,
      :result_type,
      :element_type,
      :nr_of_dimensions
    ]

    def type_to_rust_prefix("f64"), do: "float64"

    def new(nr_of_dimensions, type, module, name, args)
          when is_integer(nr_of_dimensions) and
               is_binary(type) and
               is_binary(module) and
               is_binary(name) do

      underscore_prefix = type_to_rust_prefix(type)
      camel_case_prefix = Macro.camelize(underscore_prefix)
      wrapper_type = "Ex#{camel_case_prefix}Array#{nr_of_dimensions}"

      %__MODULE__{
        sci_ex_nif_name: "#{underscore_prefix}_array#{nr_of_dimensions}_#{name}",
        rs_module: module,
        rs_function: name,
        args: args,
        element_type: to_string(type),
        arg_type: wrapper_type,
        result_type: wrapper_type,
        nr_of_dimensions: nr_of_dimensions
      }
    end
  end

  def extract_unary_function_declarations!(text) do
    case unary_function_declarations(text) do
      {:ok, decls, "", _, _, _} ->
        Enum.map(decls, &elem(&1, 1))
    end
  end

  require EEx

  @external_resource "priv/rust_generator/templates/math_functions.rs"

  EEx.function_from_file(
    :def,
    :math_functions_rs,
    "priv/rust_generator/templates/math_functions.rs",
    [:assigns]
  )

  @external_resource "priv/rust_generator/templates/array_comparisons.rs"

  EEx.function_from_file(
    :def,
    :array_comparisons_rs,
    "priv/rust_generator/templates/array_comparisons.rs",
    []
  )

  @external_resource "priv/rust_generator/templates/array_builders.rs"

  EEx.function_from_file(
    :def,
    :array_builders_rs,
    "priv/rust_generator/templates/array_builders.rs",
    []
  )

  @external_resource "priv/rust_generator/templates/sci_ex_test_math_functions_test.exs"

  EEx.function_from_file(
    :def,
    :sci_ex_test_math_functions_test_exs,
    "priv/rust_generator/templates/sci_ex_test_math_functions_test.exs",
    [:assigns]
  )

  def single_function_to_rustler(function) do
    args = Enum.map(function.args, fn arg -> ", _#{arg[:name]}" end) |> Enum.join()
    "  def #{function.sci_ex_nif_name}(_array#{function.nr_of_dimensions}#{args}), do: err()"
  end

  def functions_to_rustler(functions) do
    functions
    |> Enum.map(&single_function_to_rustler/1)
    |> Enum.intersperse("\n")
    |> to_string()
  end

  def replace_in_file(path, marker1, marker2, replacement) do
    text = File.read!(path)

    [head, rest] = String.split(text, marker1)
    [_middle, tail] = String.split(rest, marker2)

    new_text = Enum.join([head, marker1, "\n", replacement, "\n", marker2, tail])

    File.write!(path, new_text)
  end

  def run() do
    generate_math_functions()
    generate_array_builders()
    generate_array_comparisons()
  end

  def generate_math_functions() do
    # Read the actual source of the `f64` module from the rust standard library,
    # which we've copied here. Some of the functions depend on unstable features
    # and are not generally avaliable, but instead of being very clever and
    # try to determine which ones there are from the source, we'll just hardcode
    # them here (the rust compiler warns us of invalid functions with a compile
    # error; I've just followed the errors while hardcoding the functions)
    std_code = File.read!("priv/rust_generator/rust_modules/f64.rs")
    all_std_declarations = extract_unary_function_declarations!(std_code)
    std_declarations = Enum.filter(all_std_declarations, fn decl ->
      # Remove the `std` functions that depend on unstable features.
      # We'll use an alternate implementation from an external package.
      decl[:type] == "f64" and decl[:function] not in ["gamma", "erf", "erfc", "abs_sub"]
    end)

    f64_functions =
      for n_dim <- 1..6 do
        default_functions =
          for decl <- std_declarations do
            ElementwiseMathFunction.new(n_dim, "f64", "f64", decl[:function], decl[:arguments])
          end

        # Pull some extra functions from the `libm` package.
        # TODO: deal with the functions from libm which do require arguments
        extra_functions =
          for name <- ~w(lgamma erf erfc j0 j1 y0 y1) do
            ElementwiseMathFunction.new(n_dim, "f64", "libm", name, [])
          end

          Enum.sort_by(default_functions ++ extra_functions, fn f -> f.sci_ex_nif_name end)
      end


    # This will edit the elixir source.
    # Should we do this with macros instead?
    replace_in_file(
      "lib/sci_ex/sci_ex_nif.ex",
      "  # %% BEGIN:GENERATED:f64-functions %%",
      "  # %% END:GENERATED:f64-functions %%",
      functions_to_rustler(List.flatten(f64_functions))
    )

    # We don't need several dimensions here
    unique_functions = Enum.at(f64_functions, 0)

    if false do
      # Until we find a way to deal with the docstrings
      # in n intelligent way, we won't generate these functions
      # automatically.
      replace_in_file(
        "lib/sci_ex.ex",
        "  # %% BEGIN:GENERATED:f64-functions %%",
        "  # %% END:GENERATED:f64-functions %%",
        sci_ex_definitions(unique_functions)
      )
    end

    rs_code_math_functions = math_functions_rs(functions: f64_functions)
    File.write!(
      "native/sci_ex_nif/src/math_functions.rs",
      rs_code_math_functions
    )

    ex_code_math_function_tests = sci_ex_test_math_functions_test_exs(functions: f64_functions)
    File.write!(
      "test/sci_ex_test/float_64/math_functions_test.exs",
      ex_code_math_function_tests
    )
  end

  def sci_ex_definitions(functions) do
    functions
    |> Enum.map(fn f ->
        args = Enum.map(f.args, fn arg -> ", #{arg[:name]}" end) |> Enum.join()
        "  def_f64(#{f.rs_function}(array#{args}))"
      end)
    |> Enum.intersperse("\n")
    |> to_string()
  end

  def generate_array_builders() do
    names = ~w(zeros ones)

    sci_nif_ex =
      for name <- names do
        for n_dim <- 1..6 do
          args =
            1..n_dim
            |> Enum.map(fn i -> "_n#{i}" end)
            |> Enum.intersperse(", ")
            |> Enum.join()

          "  def float64_array#{n_dim}_#{name}(#{args}), do: err()"
        end
      end
      |> List.flatten()
      |> Enum.intersperse("\n")
      |> to_string()

    rs_code_array_builders = array_builders_rs()
    File.write!(
      "native/sci_ex_nif/src/array_builders.rs",
      rs_code_array_builders
    )

    replace_in_file(
      "lib/sci_ex/sci_ex_nif.ex",
      "  # %% BEGIN:GENERATED:f64-array-builders %%",
      "  # %% END:GENERATED:f64-array-builders %%",
      sci_nif_ex
    )
  end

  def generate_array_comparisons() do
    names = ~w(
        equal not_equal all_not_equal
        all_greater_than all_greater_than_or_equal
        all_less_than all_less_than_or_equal
      )

    sci_nif_ex =
      for n_dim <- 1..6 do
        for name <- names do
          "  def float64_array#{n_dim}_#{name}(_a, _b), do: err()"
        end
      end
      |> List.flatten()
      |> Enum.intersperse("\n")
      |> to_string()

    rs_code_array_comparisons = array_comparisons_rs()
    File.write!(
      "native/sci_ex_nif/src/array_comparisons.rs",
      rs_code_array_comparisons
    )

    replace_in_file(
      "lib/sci_ex/sci_ex_nif.ex",
      "  # %% BEGIN:GENERATED:f64-array-comparisons %%",
      "  # %% END:GENERATED:f64-array-comparisons %%",
      sci_nif_ex
    )
  end
end

SciEx.RustGenerator.run()
