defmodule SciEx.FloatArrayModuleBuilder do
  @moduledoc false

  defmacro __using__(opts) do
    dim = Keyword.fetch!(opts, :dim)
    bits = Keyword.fetch!(opts, :bits)
    dimensions = Enum.map(1..dim, fn i -> Macro.var(:"n#{i}", __MODULE__) end)
    caller_module = __CALLER__.module

    quote do
      defstruct resource: nil

      @type t :: %__MODULE__{}

      require SciEx.ArrayHelpers
      SciEx.ArrayHelpers.bind_comparison_array_ops_to_sci_nifs(
        __MODULE__,
        unquote(:"float#{bits}_array#{dim}")
      )

      @doc """
      Creates an array of zeros (`0.0`) with the given dimensions.
      """
      def zeros(unquote_splicing(dimensions)) do
        SciEx.SciExNif.unquote(:"float#{bits}_array#{dim}_zeros")(unquote_splicing(dimensions))
      end

      @doc """
      Creates an array of ones (`1.0`) with the given dimensions.
      """
      def ones(unquote_splicing(dimensions)) do
        SciEx.SciExNif.unquote(:"float#{bits}_array#{dim}_ones")(unquote_splicing(dimensions))
      end

      defimpl Inspect do
        alias Inspect.Algebra, as: IAlgebra

        def inspect(array, _opts) do
          IAlgebra.concat([
            unquote("##{inspect(caller_module)}<"),
            SciEx.SciExNif.unquote(:"float#{bits}_array#{dim}_inspect")(array),
            ">"
          ])
        end
      end
    end
  end
end
