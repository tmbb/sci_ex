defmodule SciEx.FloatArrayModuleBuilder do
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

      unquote(
        bind_comparison_array_ops_to_sci_nifs(
          caller_module,
          :"float#{bits}_array#{dim}"
        )
      )

      @doc """
      Creates an array of zeros (`0.0`) with the given dimensions.
      """
      @spec zeros(unquote_splicing(zeros_arg_types)) :: t()
      def zeros(unquote_splicing(dimensions)) do
        SciEx.SciExNif.unquote(:"float#{bits}_array#{dim}_zeros")(unquote_splicing(dimensions))
      end

      @doc """
      Creates an array of ones (`1.0`) with the given dimensions.
      """
      @spec ones(unquote_splicing(ones_arg_types)) :: t()
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

  defp bind_comparison_array_ops_to_sci_nifs(module, prefix) do
    quote do
      @doc """
      Tests whether two arrays are equal.
      The arrays are considered equal if every element from `a`
      is equal to the element of `b` with the same index.
      """
      @spec equal?(t(), t()) :: boolean()
      def equal?(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_equal")(a, b)
      end

      @doc """
      Tests whether two arrays are different.
      """
      @spec not_equal?(t(), t()) :: boolean()
      def not_equal?(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_not_equal")(a, b)
      end

      @doc """
      Tests whether every element in `a` is different from the element
      in `b` with the same index.

      This function is different from `not_equal?/2` as `not_equal?/2`
      considers the arrays to be different as long as a single element
      difers.
      """
      @spec all_not_equal?(t(), t()) :: boolean()
      def all_not_equal?(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_all_not_equal")(a, b)
      end

      @doc """
      Tests whether every element in `a` is less than every element
      in `b` with the same index.
      """
      @spec all_less_than?(t(), t()) :: boolean()
      def all_less_than?(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_all_less_than")(a, b)
      end

      @doc """
      Tests whether every element in `a` is less than or equal to
      every element in `b` with the same index.
      """
      @spec all_less_than_or_equal?(t(), t()) :: boolean()
      def all_less_than_or_equal?(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_all_less_than_or_equal")(a, b)
      end

      @doc """
      Tests whether every element in `a` is less than every element
      in `b` with the same index.
      """
      @spec all_greater_than?(t(), t()) :: boolean()
      def all_greater_than?(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_all_greater_than")(a, b)
      end

      @doc """
      Tests whether every element in `a` is greater than or equal to
      every element in `b` with the same index.
      """
      @spec all_greater_than_or_equal?(t(), t()) :: boolean()
      def all_greater_than_or_equal?(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_all_greater_than_or_equal")(a, b)
      end
    end
  end
end
