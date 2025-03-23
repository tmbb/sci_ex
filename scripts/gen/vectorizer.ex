defmodule SciEx.Gen.Vectorizer do
  alias SciEx.Gen.{
    RustModule,
    Argument,
    Function,
    VectorizedArgument
  }

  def replace_type(%Function{} = function, ty1, ty2) do
    replaced_arguments = Enum.map(function.arguments, fn arg ->
      if arg.type == ty1 do
        %{arg | type: ty2}
      else
        arg
      end
    end)

    replaced_result_type =
      if function.result_type == ty1 do
        ty2
      else
        ty1
      end

    %{function | arguments: replaced_arguments, result_type: replaced_result_type}
  end

  def choices(options, n), do: choices_helper(options, n, [[]])

  defp choices_helper(_options, n, already_chosen) when n <= 0 do
    already_chosen
  end

  defp choices_helper(options, n, already_chosen) do
    new_chosen =
      for opt <- options, chosen <- already_chosen do
        [opt | chosen]
      end

    choices_helper(options, n - 1, new_chosen)
  end

  def vectorize_type(function, "f64"), do: "ExFloat64Array#{function.n_dim}"
  def vectorize_type(function, "f32"), do: "ExFloat32Array#{function.n_dim}"
  def vectorize_type(_function, other), do: other

  def maybe_vectorize_argument(_function, arg, :scalar) do
    %VectorizedArgument{
      name: arg.name,
      type: arg.type,
      should_be_array?: false,
      array?: false
    }
  end

  def maybe_vectorize_argument(function, arg, :array) do
    case arg.type do
      float when float in ["f64", "f32"] ->
        %VectorizedArgument{
          name: arg.name,
          type: vectorize_type(function, arg.type),
          should_be_array?: true,
          array?: true
        }

      _other ->
        %VectorizedArgument{
          name: arg.name,
          type: arg.type,
          should_be_array?: true,
          array?: false
        }
    end
  end

  def vectorize_function(rust_module, function) do
    functions =
      for n_dim <- 1..(rust_module.n_dims) do
        n_args = length(function.arguments)
        vectorization_choices = choices([:array, :scalar], n_args)

        function_with_dim = %{function | n_dim: n_dim}

        for choice <- vectorization_choices do
          vectorized_arguments =
            for {argument, scalar_or_array} <-  Enum.zip(function_with_dim.arguments, choice) do
              maybe_vectorize_argument(function_with_dim, argument, scalar_or_array)
            end

          vectorization_possible? = not Enum.any?(vectorized_arguments, fn arg ->
            arg.should_be_array? and (not arg.array?)
          end)

          if vectorization_possible? do
            name_suffix =
              choice
              |> Enum.map(fn
                  :scalar -> "scalar"
                  :array -> "array#{n_dim}"
                end)
              |> Enum.intersperse("_")

            prefix = "#{rust_module.prefix}_float#{rust_module.bits}"
            new_ex_function = "#{prefix}_#{function.ex_function}_#{name_suffix}"

            function_with_dim = %{
              function_with_dim |
                ex_function: new_ex_function,
                arguments: vectorized_arguments,
                vectorization: choice
            }

            if Enum.all?(choice, fn x -> x == :scalar end) do
              if n_dim == 1 do
                # We have never seen this particular implementation.
                # Let's add it.
                %{function_with_dim | returns_array: false}
              else
                # Don't repeat the function in higher dimensions
                []
              end
            else
              %{function_with_dim |
                  result_type: vectorize_type(function_with_dim, function_with_dim.result_type),
                  returns_array: true}
            end
          else
            []
          end
        end
      end

    List.flatten(functions)
  end

  def vectorize_functions(module, functions) do
    functions
    |> Enum.map(fn f -> vectorize_function(module, f) end)
    |> List.flatten()
  end

  def example() do
    _module = %RustModule{
      prefix: "math",
      bits: 64,
      type: "float",
      name: "math_functions",
      n_dims: 6,
      extra_imports: ["use libm;"],
      functions: []
    }

    _function =
      %Function{
        ex_function: "log",
        rs_function: "log",
        rs_module: "f64",
        arguments: [
          %Argument{name: "self", type: nil},
          %Argument{name: "base", type: "f64"}
        ],
        result_type: "f64"
      }
      |> assign_type_to_self("f64")
      |> rename_self("arg0")
  end

  def assign_type_to_self(function, type) do
    new_arguments =
      for arg <- function.arguments do
        if arg.name == "self" do
          %{arg | type: type}
        else
          arg
        end
      end

    %{function | arguments: new_arguments}
  end

  def rename_self(function, name) do
    new_arguments =
      for arg <- function.arguments do
        if arg.name == "self" do
          %{arg | name: name}
        else
          arg
        end
      end

    %{function | arguments: new_arguments}
  end

  require EEx

  @external_resource "priv/rust_generator/templates/vectorized_function.rs"

  EEx.function_from_file(
    :def,
    :vectorized_function_rs,
    "priv/rust_generator/templates/vectorized_function.rs",
    [:assigns]
  )

  @external_resource "priv/rust_generator/templates/scalar_function.rs"

  EEx.function_from_file(
    :def,
    :scalar_function_rs,
    "priv/rust_generator/templates/scalar_function.rs",
    [:assigns]
  )

  def vectorized_function_to_rust_code(function) do
    f_typed_args =
      for arg <- function.arguments do
        "#{arg.name}: #{arg.type}"
      end
      |> Enum.intersperse(", ")
      |> Enum.join()

    f_args_as_refs =
      for arg <- function.arguments, arg.array? do
        "&#{arg.name} in &#{arg.name}.resource.0"
      end
      |> Enum.intersperse(",\n           ")
      |> Enum.join()

    f_args =
      for arg <- function.arguments do
        arg.name
      end
      |> Enum.intersperse(", ")
      |> Enum.join()

    array_arg = Enum.find(function.arguments, fn arg -> arg.array? end)

    if function.returns_array do
      vectorized_function_rs(
        f: function,
        f_typed_args: f_typed_args,
        f_args_as_refs: f_args_as_refs,
        f_args: f_args,
        array_arg: array_arg,
        output_array: "output_array"
      )
    else
      scalar_function_rs(
        f: function,
        f_typed_args: f_typed_args,
        f_args_as_refs: f_args_as_refs,
        f_args: f_args
      )
    end
  end

  def vectorized_functions_to_rust_code_iodata(rust_module, functions) do
    array_types_list =
      1..(rust_module.n_dims)
      |> Enum.map(fn i -> "Array#{i}" end)
      |> Enum.intersperse(", ")

    extra_imports =
      rust_module.extra_imports
      |> Enum.map(fn imp -> imp <> "\n" end)

    imports = """
    // -----------------------------------------------------
    // Autogenerated file - edits to this file will be lost
    // -----------------------------------------------------

    use ndarray::{azip, #{array_types_list}};
    #{extra_imports}use crate::datatypes::*;

    """

    body =
      functions
      |> Enum.map(&vectorized_function_to_rust_code/1)
      |> Enum.intersperse("\n")

    [imports, body]
  end
end
