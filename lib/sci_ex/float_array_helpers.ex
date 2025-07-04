defmodule SciEx.FloatArrayHelpers do
  @moduledoc false

  alias SciEx.{Float64, Float32, SciExNif}

  def max(array) do
    case array do
      %Float64.Array1{} ->
        SciExNif.stats_float64_array1_elementwise_max(array)

      %Float64.Array2{} ->
        SciExNif.stats_float64_array2_elementwise_max(array)

      %Float64.Array3{} ->
        SciExNif.stats_float64_array3_elementwise_max(array)

      %Float64.Array4{} ->
        SciExNif.stats_float64_array4_elementwise_max(array)

      %Float64.Array5{} ->
        SciExNif.stats_float64_array5_elementwise_max(array)

      %Float64.Array6{} ->
        SciExNif.stats_float64_array6_elementwise_max(array)

      %Float32.Array1{} ->
        SciExNif.stats_float32_array1_elementwise_max(array)

      %Float32.Array2{} ->
        SciExNif.stats_float32_array2_elementwise_max(array)

      %Float32.Array3{} ->
        SciExNif.stats_float32_array3_elementwise_max(array)

      %Float32.Array4{} ->
        SciExNif.stats_float32_array4_elementwise_max(array)

      %Float32.Array5{} ->
        SciExNif.stats_float32_array5_elementwise_max(array)

      %Float32.Array6{} ->
        SciExNif.stats_float32_array6_elementwise_max(array)
    end
  end

  def min(array) do
    case array do
      %Float64.Array1{} ->
        SciExNif.stats_float64_array1_elementwise_min(array)

      %Float64.Array2{} ->
        SciExNif.stats_float64_array2_elementwise_min(array)

      %Float64.Array3{} ->
        SciExNif.stats_float64_array3_elementwise_min(array)

      %Float64.Array4{} ->
        SciExNif.stats_float64_array4_elementwise_min(array)

      %Float64.Array5{} ->
        SciExNif.stats_float64_array5_elementwise_min(array)

      %Float64.Array6{} ->
        SciExNif.stats_float64_array6_elementwise_min(array)

      %Float32.Array1{} ->
        SciExNif.stats_float32_array1_elementwise_min(array)

      %Float32.Array2{} ->
        SciExNif.stats_float32_array2_elementwise_min(array)

      %Float32.Array3{} ->
        SciExNif.stats_float32_array3_elementwise_min(array)

      %Float32.Array4{} ->
        SciExNif.stats_float32_array4_elementwise_min(array)

      %Float32.Array5{} ->
        SciExNif.stats_float32_array5_elementwise_min(array)

      %Float32.Array6{} ->
        SciExNif.stats_float32_array6_elementwise_min(array)
    end
  end

  def to_float(x) when is_float(x), do: x
  def to_float(x) when is_integer(x), do: 1.0 * x

  def vectorization_choices(pairs) do
    chosen = vectorization_choices_helper(pairs, [[]])
    Enum.map(chosen, &Enum.reverse/1)
  end

  defp vectorization_choices_helper([{key, arg} | rest], already_chosen) do
    new_chosen =
      case key do
        :array_float ->
          for opt <- [:array_float, :scalar], chosen <- already_chosen do
            [{opt, arg} | chosen]
          end

        :scalar ->
          for chosen <- already_chosen do
            [{:scalar, arg} | chosen]
          end
      end

    vectorization_choices_helper(rest, new_chosen)
  end

  defp vectorization_choices_helper([], chosen), do: chosen

  defmacro defvectorized1(ex_f, rs_f, arg, args, opts) do
    vectorize1(ex_f, rs_f, arg, args, opts)
  end

  def vectorize1(ex_f, rs_f, arg, args, opts) do
    prefix = Keyword.fetch!(opts, :prefix)
    bit_values = Keyword.get(opts, :bits, [64, 32])
    n_dims = Keyword.get(opts, :n_dims, 6)
    parallel_var = Macro.var(:parallel, __MODULE__)

    function_args = args ++ [parallel_var]

    cases =
      for bits <- bit_values do
        for n_dim <- 1..n_dims do
          array_module =
            Module.concat([
              "SciEx",
              "Float#{bits}",
              "Array#{n_dim}"
            ])

          maybe_scalar_case =
            if n_dim == 1 do
              quote do
                number when is_number(number) ->
                  SciEx.SciExNif.unquote(:"#{prefix}_float#{bits}_#{rs_f}_scalar")(
                    unquote_splicing(args)
                  )
              end
            else
              []
            end

          array_case =
            quote do
              %unquote(array_module){} ->
                SciEx.SciExNif.unquote(:"#{prefix}_float#{bits}_#{rs_f}_array#{n_dim}")(
                  unquote_splicing(function_args)
                )
            end

          [maybe_scalar_case, array_case]
        end
      end

    cases = List.flatten(cases)

    case_statement = {:case, [], [arg, [do: cases]]}

    quote do
      def unquote(ex_f)(unquote_splicing(args), opts \\ []) do
        unquote(parallel_var) =
          Keyword.get(
            opts,
            :parallel,
            SciEx.get_parallelization_strategy()
          )

        unquote(case_statement)
      end
    end
  end

  defmacro defvectorized2(ex_f, rs_f, [arg1, arg2], args, opts) do
    vectorize2(ex_f, rs_f, [arg1, arg2], args, opts)
  end

  def vectorize2(ex_f, rs_f, [arg1, arg2], args, opts) do
    prefix = Keyword.fetch!(opts, :prefix)
    bit_values = Keyword.get(opts, :bits, [64, 32])
    n_dims = Keyword.get(opts, :n_dims, 6)
    parallel_var = Macro.var(:parallel, __MODULE__)

    function_args = args ++ [parallel_var]

    cases =
      for bits <- bit_values do
        for n_dim <- 1..n_dims do
          array_module =
            Module.concat([
              "SciEx",
              "Float#{bits}",
              "Array#{n_dim}"
            ])

          maybe_scalar_scalar_case =
            if n_dim == 1 do
              quote do
                {x1, x2} when is_number(x1) and is_number(x2) ->
                  SciEx.SciExNif.unquote(:"#{prefix}_float#{bits}_#{rs_f}_scalar_scalar")(
                    unquote_splicing(args)
                  )
              end
            else
              []
            end

          scalar_array_case =
            quote do
              {x1, %unquote(array_module){}} when is_number(x1) ->
                SciEx.SciExNif.unquote(:"#{prefix}_float#{bits}_#{rs_f}_scalar_array#{n_dim}")(
                  unquote_splicing(function_args)
                )
            end

          array_scalar_case =
            quote do
              {%unquote(array_module){}, x2} when is_number(x2) ->
                SciEx.SciExNif.unquote(:"#{prefix}_float#{bits}_#{rs_f}_array#{n_dim}_scalar")(
                  unquote_splicing(function_args)
                )
            end

          array_array_case =
            quote do
              {%unquote(array_module){}, %unquote(array_module){}} ->
                SciEx.SciExNif.unquote(
                  :"#{prefix}_float#{bits}_#{rs_f}_array#{n_dim}_array#{n_dim}"
                )(unquote_splicing(function_args))
            end

          [
            maybe_scalar_scalar_case,
            scalar_array_case,
            array_scalar_case,
            array_array_case
          ]
        end
      end

    cases = List.flatten(cases)

    match_expr =
      quote do
        {unquote(arg1), unquote(arg2)}
      end

    case_statement = {:case, [], [match_expr, [do: cases]]}

    quote do
      def unquote(ex_f)(unquote_splicing(args), opts \\ []) do
        unquote(parallel_var) =
          Keyword.get(
            opts,
            :parallel,
            SciEx.get_parallelization_strategy()
          )

        unquote(case_statement)
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
end
