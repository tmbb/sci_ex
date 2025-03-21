defmodule SciEx.ArrayHelpers do
  @moduledoc false

  def to_float(x) when is_float(x), do: x
  def to_float(x) when is_integer(x), do: 1.0 * x

  defmacro def_vectorized_bin_op_f64({op, meta, [a, b]} = call, ex_op, rs_op) do
    quote do
      def unquote(call) do
        unquote(ex_op)(unquote(a), unquote(b))
      end

      def unquote(ex_op)(unquote(a), unquote(b)) do
        case {unquote(a), unquote(b)} do
          {%SciEx.Float64.Array1{}, %SciEx.Float64.Array1{}} ->
            SciEx.SciExNif.unquote(:"float64_#{rs_op}_array1_array1")(
              unquote(a),
              unquote(b)
            )

          {%SciEx.Float64.Array1{}, number} when is_number(number) ->
            SciEx.SciExNif.unquote(:"float64_#{rs_op}_array1_f64")(
              unquote(a),
              SciEx.ArrayHelpers.to_float(number)
            )

          {number, %SciEx.Float64.Array1{}} when is_number(number) ->
            SciEx.SciExNif.unquote(:"float64_#{rs_op}_f64_array1")(
              unquote(a),
              SciEx.ArrayHelpers.to_float(number)
            )

          {number1, number2} when is_number(number1) and is_number(number2) ->
            apply(Kernel, unquote(op), [unquote(a), unquote(b)])
        end
      end
    end
  end

  @doc """
  Define a function that takes array of 64-bit floats as the
  first argument for 1D, 2D, ..., 6D arrays by calling the
  corresponding NIF defined on the rust side.
  """
  defmacro def_f64(call) do
    {f, [array | _rest] = args} = Macro.decompose_call(call)

    quote do
      def unquote(call) do
        case unquote(array) do
          %SciEx.Float64.Array1{} ->
            SciEx.SciExNif.unquote(:"float64_array1_#{f}")(unquote_splicing(args))

          %SciEx.Float64.Array2{} ->
            SciEx.SciExNif.unquote(:"float64_array2_#{f}")(unquote_splicing(args))

          %SciEx.Float64.Array3{} ->
            SciEx.SciExNif.unquote(:"float64_array3_#{f}")(unquote_splicing(args))

          %SciEx.Float64.Array4{} ->
            SciEx.SciExNif.unquote(:"float64_array4_#{f}")(unquote_splicing(args))

          %SciEx.Float64.Array5{} ->
            SciEx.SciExNif.unquote(:"float64_array5_#{f}")(unquote_splicing(args))

          %SciEx.Float64.Array6{} ->
            SciEx.SciExNif.unquote(:"float64_array6_#{f}")(unquote_splicing(args))
        end
      end
    end
  end

  defmacro bind_comparison_array_ops_to_sci_nifs(module, prefix) do
    quote do
      @doc """
      Tests whether two arrays are equal.
      The arrays are considered equal if every element from `a`
      is equal to the element of `b` with the same index.
      """
      def equal?(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_equal")(a, b)
      end

      @doc """
      Tests whether two arrays are different.
      """
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
      def all_not_equal?(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_all_not_equal")(a, b)
      end

      @doc """
      Tests whether every element in `a` is less than every element
      in `b` with the same index.
      """
      def all_less_than?(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_all_less_than")(a, b)
      end

      @doc """
      Tests whether every element in `a` is less than or equal to
      every element in `b` with the same index.
      """
      def all_less_than_or_equal(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_all_less_than_or_equal")(a, b)
      end

      @doc """
      Tests whether every element in `a` is less than every element
      in `b` with the same index.
      """
      def all_greater_than(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_all_greater_than")(a, b)
      end

      @doc """
      Tests whether every element in `a` is greater than or equal to
      every element in `b` with the same index.
      """
      def all_greater_than_or_equal(%unquote(module){} = a, %unquote(module){} = b) do
        SciEx.SciExNif.unquote(:"#{prefix}_all_greater_than_or_equal")(a, b)
      end
    end
  end
end
