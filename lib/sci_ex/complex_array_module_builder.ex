defmodule SciEx.ComplexArrayModuleBuilder do
  @moduledoc false

  defmacro __using__(opts) do
    dim = Keyword.fetch!(opts, :dim)
    bits = Keyword.fetch!(opts, :bits)
    dimensions = Enum.map(1..dim, fn i -> Macro.var(:"n#{i}", __MODULE__) end)
    caller_module = __CALLER__.module

    zeros_arg_types = List.duplicate(quote(do: pos_integer()), dim)
    ones_arg_types = zeros_arg_types

    quote do
      defstruct n_dims: nil, resource: nil

      @type t :: %__MODULE__{}

      @doc """
      Creates an array of zeros (`0.0`) with the given dimensions.
      """
      @spec zeros(unquote_splicing(zeros_arg_types)) :: t()
      def zeros(unquote_splicing(dimensions)) do
        SciEx.SciExNif.unquote(:"complex#{bits}_array#{dim}_zeros")(unquote_splicing(dimensions))
      end

      @doc """
      Creates an array of ones (`1.0`) with the given dimensions.
      """
      @spec ones(unquote_splicing(ones_arg_types)) :: t()
      def ones(unquote_splicing(dimensions)) do
        SciEx.SciExNif.unquote(:"complex#{bits}_array#{dim}_ones")(unquote_splicing(dimensions))
      end

      defimpl Inspect do
        alias Inspect.Algebra, as: IAlgebra

        def inspect(array, _opts) do
          IAlgebra.concat([
            unquote("##{inspect(caller_module)}<"),
            SciEx.SciExNif.unquote(:"complex#{bits}_array#{dim}_inspect")(array),
            ">"
          ])
        end
      end
    end
  end
end
