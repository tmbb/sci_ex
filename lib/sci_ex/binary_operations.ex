defmodule SciEx.BinaryOperations do
  defmacro defvectorizedbinop({op, meta, [a, b]} = call, ex_op, rs_op) do
    cases =
      for nr_of_bits <- [64, 32] do
        for n_dim <- 1..6 do
          float_array_module =
            Module.concat([
              "SciEx",
              "Float#{nr_of_bits}",
              "Array#{n_dim}"
            ])

          complex_array_module =
            Module.concat([
              "SciEx",
              "Complex#{nr_of_bits}",
              "Array#{n_dim}"
            ])

          complex_scalar_module =
            Module.concat([
              "SciEx",
              "Complex#{nr_of_bits}"
            ])

          float_array_array =
            quote do
              {%unquote(float_array_module){}, %unquote(float_array_module){}} ->
                SciEx.SciExNif.unquote(:"float#{nr_of_bits}_#{rs_op}_array1_array1")(
                  unquote(a),
                  unquote(b)
                )
            end

          float_array_scalar =
            quote do
              {%unquote(float_array_module){}, number} when is_number(number) ->
                SciEx.SciExNif.unquote(:"float#{nr_of_bits}_#{rs_op}_array1_scalar")(
                  unquote(a),
                  SciEx.FloatArrayHelpers.to_float(number)
                )
            end

          float_scalar_array =
            quote do
              {number, %unquote(float_array_module){}} when is_number(number) ->
                SciEx.SciExNif.unquote(:"float#{nr_of_bits}_#{rs_op}_scalar_array1")(
                  SciEx.FloatArrayHelpers.to_float(number),
                  unquote(b)
                )
            end

          complex_array_array =
            quote do
              {%unquote(complex_array_module){}, %unquote(complex_array_module){}} ->
                SciEx.SciExNif.unquote(:"complex#{nr_of_bits}_#{rs_op}_array1_array1")(
                  unquote(a),
                  unquote(b)
                )
            end

          complex_array_scalar =
            quote do
              {%unquote(complex_array_module){}, %unquote(complex_scalar_module){}} ->
                SciEx.SciExNif.unquote(:"complex#{nr_of_bits}_#{rs_op}_array1_scalar")(
                  unquote(a),
                  unquote(b)
                )
            end

          complex_scalar_array =
            quote do
              {%unquote(complex_scalar_module){}, %unquote(complex_array_module){}} ->
                SciEx.SciExNif.unquote(:"complex#{nr_of_bits}_#{rs_op}_scalar_array1")(
                  unquote(a),
                  unquote(b)
                )
            end

          complex_scalar_scalar =
            quote do
              {%unquote(complex_scalar_module){}, %unquote(complex_scalar_module){}} ->
                SciEx.SciExNif.unquote(:"complex#{nr_of_bits}_#{rs_op}_scalar_scalar")(
                  unquote(a),
                  unquote(b)
                )
            end

          [
            float_array_array,
            float_array_scalar,
            float_scalar_array,
            complex_array_array,
            complex_array_scalar,
            complex_scalar_array,
            complex_scalar_scalar
          ]
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
      @spec unquote(ex_op)(SciEx.Types.float_value(), SciEx.Types.float_value()) ::
              SciEx.Types.float_value()
      def unquote(ex_op)(unquote(a), unquote(b)) do
        unquote(case_statement)
      end

      @doc """
      Operator `#{unquote(op)}`, which is equivalente to the `SciEx.#{unquote(ex_op)}/2` function.
      """
      @spec unquote(op)(SciEx.Types.float_value(), SciEx.Types.float_value()) ::
              SciEx.Types.float_value()
      def unquote(call) do
        unquote(ex_op)(unquote(a), unquote(b))
      end
    end
  end
end
