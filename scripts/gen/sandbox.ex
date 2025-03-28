
# defmodule SciEx.RustGenerator do
#   defmodule ElementwiseMathFunction do
#     defstruct [
#       :sci_ex_nif_name,
#       :rs_module,
#       :rs_function,
#       :args,
#       :nr_of_bits,
#       :nr_of_dimensions
#     ]

#     def new(nr_of_dimensions, nr_of_bits, module, name, args)
#           when is_integer(nr_of_dimensions) and
#                is_integer(nr_of_bits) and
#                is_binary(module) and
#                (is_binary(name) or is_tuple(name)) do

#       {ex_name, rs_name} =
#         case name do
#           {ex, rs} -> {ex, rs}
#           other -> {other, other}
#         end

#       %__MODULE__{
#         sci_ex_nif_name: "float#{nr_of_bits}_#{ex_name}_array#{nr_of_dimensions}",
#         rs_module: module,
#         rs_function: rs_name,
#         args: args,
#         nr_of_bits: nr_of_bits,
#         nr_of_dimensions: nr_of_dimensions
#       }
#     end
#   end

#   require EEx

#   @external_resource "priv/rust_generator/templates/math_functions.rs"

#   EEx.function_from_file(
#     :def,
#     :math_functions_rs,
#     "priv/rust_generator/templates/math_functions.rs",
#     [:assigns]
#   )

  # @external_resource "priv/rust_generator/templates/array_comparisons.rs"

  # EEx.function_from_file(
  #   :def,
  #   :array_comparisons_rs,
  #   "priv/rust_generator/templates/array_comparisons.rs",
  #   [:assigns]
  # )

#   @external_resource "priv/rust_generator/templates/array_builders.rs"

#   EEx.function_from_file(
#     :def,
#     :array_builders_rs,
#     "priv/rust_generator/templates/array_builders.rs",
#     []
#   )

#   @external_resource "priv/rust_generator/templates/sci_ex_test_math_functions_test.exs"

#   EEx.function_from_file(
#     :def,
#     :sci_ex_test_math_functions_test_exs,
#     "priv/rust_generator/templates/sci_ex_test_math_functions_test.exs",
#     [:assigns]
#   )

#   @external_resource "priv/rust_generator/templates/sci_ex_test_math_functions_test.exs"

#   EEx.function_from_file(
#     :def,
#     :array_binary_operations_rs,
#     "priv/rust_generator/templates/array_binary_operations.rs",
#     [:assigns]
#   )

#   def extract_unary_function_declarations!(_arg), do: raise "Oops"

#   def single_function_to_rustler(function) do
#     args = Enum.map(function.args, fn arg -> ", _#{arg[:name]}" end) |> Enum.join()
#     "  def #{function.sci_ex_nif_name}(_array#{function.nr_of_dimensions}#{args}), do: err()"
#   end

#   def functions_to_rustler(functions) do
#     functions
#     |> Enum.map(&single_function_to_rustler/1)
#     |> Enum.intersperse("\n")
#     |> to_string()
#   end

#   def replace_in_file(path, marker1, marker2, replacement) do
#     text = File.read!(path)

#     [head, rest] = String.split(text, marker1)
#     [_middle, tail] = String.split(rest, marker2)

#     new_text = Enum.join([head, marker1, "\n", replacement, "\n", marker2, tail])

#     File.write!(path, new_text)
#   end

#   def run() do
#     generate_math_functions()
#     generate_array_builders()
#     generate_array_comparisons()
#     generate_binary_operations()
#   end

#   def generate_binary_operations() do
#     operations = [
#       add: "+",
#       subtract: "-",
#       multiply: "*",
#       divide: "/"
#     ]

#     sci_ex_nif =
#       for nr_of_bits <- [64, 32] do
#         for n_dim <- 1..6 do
#           for {op_name, _} <- operations do
#             [
#               "  def float#{nr_of_bits}_#{op_name}_array#{n_dim}_array#{n_dim}(_a, _b), do: err()",
#               "  def float#{nr_of_bits}_#{op_name}_array#{n_dim}_scalar(_a, _b), do: err()",
#               "  def float#{nr_of_bits}_#{op_name}_scalar_array#{n_dim}(_a, _b), do: err()"
#             ]
#           end
#         end
#       end
#       |> List.flatten()
#       |> Enum.intersperse("\n")
#       |> Enum.join()

#     rs_code_array_binary_operations =
#       array_binary_operations_rs(
#         operations: operations,
#         nr_of_bits: 64
#       )
#     File.write!(
#       "native/sci_ex_nif/src/f64_array_binary_operations.rs",
#       rs_code_array_binary_operations
#     )

#     rs_code_array_binary_operations =
#       array_binary_operations_rs(
#         operations: operations,
#         nr_of_bits: 32
#       )
#     File.write!(
#       "native/sci_ex_nif/src/f32_array_binary_operations.rs",
#       rs_code_array_binary_operations
#     )

#     replace_in_file(
#       "lib/sci_ex/sci_ex_nif.ex",
#       "  # %% BEGIN:GENERATED:float_array_binary_operations %%",
#       "  # %% END:GENERATED:float_array_binary_operations %%",
#       sci_ex_nif
#     )
#   end

#   def generate_math_functions() do
#     # Read the actual source of the `f64` module from the rust standard library,
#     # which we've copied here. Some of the functions depend on unstable features
#     # and are not generally avaliable, but instead of being very clever and
#     # try to determine which ones there are from the source, we'll just hardcode
#     # them here (the rust compiler warns us of invalid functions with a compile
#     # error; I've just followed the errors while hardcoding the functions)
#     f64_std_code = File.read!("priv/rust_generator/rust_modules/f64.rs")
#     f64_all_std_declarations = extract_unary_function_declarations!(f64_std_code)
#     f64_std_declarations = Enum.filter(f64_all_std_declarations, fn decl ->
#       # Remove the `std` functions that depend on unstable features.
#       # We'll use an alternate implementation from an external package.
#       decl[:type] == "f64" and decl[:function] not in ["gamma", "erf", "erfc", "abs_sub"]
#     end)

#     f32_std_code = File.read!("priv/rust_generator/rust_modules/f32.rs")
#     f32_all_std_declarations = extract_unary_function_declarations!(f32_std_code)
#     f32_std_declarations = Enum.filter(f32_all_std_declarations, fn decl ->
#       # Remove the `std` functions that depend on unstable features.
#       # We'll use an alternate implementation from an external package.
#       decl[:type] == "f32" and decl[:function] not in ["gamma", "erf", "erfc", "abs_sub"]
#     end)


#     f64_functions =
#       for n_dim <- 1..6 do
#         default_functions =
#           for decl <- f64_std_declarations do
#             ElementwiseMathFunction.new(n_dim, 64, "f64", decl[:function], decl[:arguments])
#           end

#         # Pull some extra functions from the `libm` package.
#         # TODO: deal with the functions from libm which do require arguments
#         extra_functions =
#           for name <- ~w(lgamma erf erfc j0 j1 y0 y1) do
#             ElementwiseMathFunction.new(n_dim, 64, "libm", name, [])
#           end

#         Enum.sort_by(default_functions ++ extra_functions, fn f -> f.sci_ex_nif_name end)
#       end
#       |> List.flatten()

#     f32_functions =
#       for n_dim <- 1..6 do
#         default_functions =
#           for decl <- f32_std_declarations do
#             ElementwiseMathFunction.new(n_dim, 32, "f32", decl[:function], decl[:arguments])
#           end

#         # Pull some extra functions from the `libm` package.
#         # TODO: deal with the functions from libm which do require arguments
#         extra_functions =
#           for name <- ~w(lgamma erf erfc j0 j1 y0 y1) do
#             ElementwiseMathFunction.new(n_dim, 32, "libm", {name, name <> "f"}, [])
#           end

#         Enum.sort_by(default_functions ++ extra_functions, fn f -> f.sci_ex_nif_name end)
#       end
#       |> List.flatten()

#     rs_code_math_functions = math_functions_rs(functions: f64_functions)
#     File.write!(
#       "native/sci_ex_nif/src/f64_math_functions.rs",
#       rs_code_math_functions
#     )

#     rs_code_math_functions = math_functions_rs(functions: f32_functions)
#     File.write!(
#       "native/sci_ex_nif/src/f32_math_functions.rs",
#       rs_code_math_functions
#     )

#     ex_code_math_function_tests = sci_ex_test_math_functions_test_exs(functions: f64_functions)
#     File.write!(
#       "test/sci_ex_test/float_64/math_functions_test.exs",
#       ex_code_math_function_tests
#     )

#     all_functions = List.flatten([f64_functions, f32_functions])

#     replace_in_file(
#       "lib/sci_ex/sci_ex_nif.ex",
#       "  # %% BEGIN:GENERATED:float-functions %%",
#       "  # %% END:GENERATED:float-functions %%",
#       functions_to_rustler(all_functions)
#     )
#   end

#   def sci_ex_definitions(functions) do
#     functions
#     |> Enum.map(fn f ->
#         args = Enum.map(f.args, fn arg -> ", #{arg[:name]}" end) |> Enum.join()
#         "  def_f64(#{f.rs_function}(array#{args}))"
#       end)
#     |> Enum.intersperse("\n")
#     |> to_string()
#   end

#   def generate_array_builders() do
#     names = ~w(zeros ones)

#     sci_nif_ex =
#       for type <- ["float64", "float32"] do
#         for name <- names do
#           for n_dim <- 1..6 do
#             args =
#               1..n_dim
#               |> Enum.map(fn i -> "_n#{i}" end)
#               |> Enum.intersperse(", ")
#               |> Enum.join()

#             "  def #{type}_array#{n_dim}_#{name}(#{args}), do: err()"
#           end
#         end
#       end
#       |> List.flatten()
#       |> Enum.intersperse("\n")
#       |> to_string()

#     rs_code_array_builders = array_builders_rs()
#     File.write!(
#       "native/sci_ex_nif/src/array_builders.rs",
#       rs_code_array_builders
#     )

#     replace_in_file(
#       "lib/sci_ex/sci_ex_nif.ex",
#       "  # %% BEGIN:GENERATED:float-array-builders %%",
#       "  # %% END:GENERATED:float-array-builders %%",
#       sci_nif_ex
#     )
#   end

#   def generate_array_comparisons() do
#     names = ~w(
#         equal not_equal all_not_equal
#         all_greater_than all_greater_than_or_equal
#         all_less_than all_less_than_or_equal
#       )

#     sci_nif_ex =
#       for nr_of_bits <- [64, 32] do
#         for n_dim <- 1..6 do
#           for name <- names do
#             "  def float#{nr_of_bits}_array#{n_dim}_#{name}(_a, _b), do: err()"
#           end
#         end
#       end
#       |> List.flatten()
#       |> Enum.intersperse("\n")
#       |> to_string()

#     rs_code_array_comparisons = array_comparisons_rs(nr_of_bits: 64)
#     File.write!(
#       "native/sci_ex_nif/src/f64_array_comparisons.rs",
#       rs_code_array_comparisons
#     )

#     rs_code_array_comparisons = array_comparisons_rs(nr_of_bits: 32)
#     File.write!(
#       "native/sci_ex_nif/src/f32_array_comparisons.rs",
#       rs_code_array_comparisons
#     )

#     replace_in_file(
#       "lib/sci_ex/sci_ex_nif.ex",
#       "  # %% BEGIN:GENERATED:float_array_comparisons %%",
#       "  # %% END:GENERATED:float_array_comparisons %%",
#       sci_nif_ex
#     )
#   end
# end

# # SciEx.RustGenerator.run()
