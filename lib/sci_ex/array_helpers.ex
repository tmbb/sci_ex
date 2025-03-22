defmodule SciEx.ArrayHelpers do
  @moduledoc false

  def to_float(x) when is_float(x), do: x
  def to_float(x) when is_integer(x), do: 1.0 * x

  defmacro def_vectorized_bin_op_float({op, meta, [a, b]} = call, ex_op, rs_op) do
    cases =
      for nr_of_bits <- [64, 32] do
        for n_dim <- 1..6 do
          array_module =
            Module.concat([
              "SciEx",
              "Float#{nr_of_bits}",
              "Array#{n_dim}"
            ])

          array_array =
            quote do
              {%unquote(array_module){}, %unquote(array_module){}} ->
                SciEx.SciExNif.unquote(:"float#{nr_of_bits}_#{rs_op}_array1_array1")(
                  unquote(a),
                  unquote(b)
                )
            end

          array_scalar =
            quote do
              {%unquote(array_module){}, number} when is_number(number) ->
                SciEx.SciExNif.unquote(:"float#{nr_of_bits}_#{rs_op}_array1_scalar")(
                  unquote(a),
                  SciEx.ArrayHelpers.to_float(number)
                )
            end

          scalar_array =
            quote do
              {number, %unquote(array_module){}} when is_number(number) ->
                SciEx.SciExNif.unquote(:"float#{nr_of_bits}_#{rs_op}_scalar_array1")(
                  SciEx.ArrayHelpers.to_float(number),
                  unquote(b)
                )
            end

          [array_array, array_scalar, scalar_array]
        end
      end

    number_number_case =
      quote do
        {number1, number2} when is_number(number1) and is_number(number2) ->
          apply(Kernel, unquote(op), [number1, number2])
      end

    cases = List.flatten([number_number_case | cases])

    case_statement = {:case, meta, [{a, b}, [do: cases]]}

    quote do
      @spec unquote(ex_op)(SciEx.Types.float64_value(), SciEx.Types.float64_value()) ::
              SciEx.Types.float64_value()
      def unquote(ex_op)(unquote(a), unquote(b)) do
        unquote(case_statement)
      end

      @doc """
      Operator `#{unquote(op)}`, which is equivalente to the `SciEx.#{unquote(ex_op)}/2` function.
      """
      @spec unquote(op)(SciEx.Types.float64_value(), SciEx.Types.float64_value()) ::
              SciEx.Types.float64_value()
      def unquote(call) do
        unquote(ex_op)(unquote(a), unquote(b))
      end
    end
  end

  @doc """
  Define a function that takes array of 64-bit floats as the
  first argument for 1D, 2D, ..., 6D arrays by calling the
  corresponding NIF defined on the rust side.
  """
  defmacro def_float(call = {_, meta, _}) do
    {f, [array | _rest] = args} = Macro.decompose_call(call)

    cases =
      for nr_of_bits <- [64, 32] do
        for n_dim <- 1..6 do
          array_module =
            Module.concat([
              "SciEx",
              "Float#{nr_of_bits}",
              "Array#{n_dim}"
            ])

          quote do
            %unquote(array_module){} ->
              SciEx.SciExNif.unquote(:"float#{nr_of_bits}_#{f}_array#{n_dim}")(
                unquote_splicing(args)
              )
          end
        end
      end

    cases = List.flatten(cases)

    case_statement = {:case, meta, [array, [do: cases]]}

    quote do
      def unquote(call) do
        unquote(case_statement)
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
