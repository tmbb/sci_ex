defmodule SciEx.ComplexArrayHelpers do
  @moduledoc false

  def vectorization_choices(pairs) do
    chosen = vectorization_choices_helper(pairs, [[]])
    Enum.map(chosen, &Enum.reverse/1)
  end

  defp vectorization_choices_helper([{key, arg} | rest], already_chosen) do
    new_chosen =
      case key do
        :array_complex ->
          for opt <- [:array_complex, :scalar], chosen <- already_chosen do
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
    float? = Keyword.get(opts, :float, true)
    complex? = Keyword.get(opts, :complex, false)
    parallel_var = Macro.var(:parallel, __MODULE__)

    function_args = args ++ [parallel_var]

    float_cases =
      for bits <- bit_values, n_dim <- 1..n_dims do
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

    complex_cases =
      for bits <- bit_values, n_dim <- 1..n_dims do
        scalar_module =
          Module.concat([
            "SciEx",
            "Complex#{bits}"
          ])

        array_module =
          Module.concat([
            "SciEx",
            "Complex#{bits}",
            "Array#{n_dim}"
          ])

        maybe_scalar_case =
          if n_dim == 1 do
            quote do
              %unquote(scalar_module){} ->
                SciEx.SciExNif.unquote(:"#{prefix}_complex#{bits}_#{rs_f}_scalar")(
                  unquote_splicing(args)
                )
            end
          else
            []
          end

        array_case =
          quote do
            %unquote(array_module){} ->
              SciEx.SciExNif.unquote(:"#{prefix}_complex#{bits}_#{rs_f}_array#{n_dim}")(
                unquote_splicing(function_args)
              )
          end

        [maybe_scalar_case, array_case]
      end

    cases =
      case {float?, complex?} do
        {true, true} ->
          List.flatten([float_cases, complex_cases])

        {true, false} ->
          List.flatten(float_cases)

        {false, true} ->
          List.flatten(complex_cases)

        {false, false} ->
          raise "No types given"
      end

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
    float? = Keyword.get(opts, :float, true)
    complex? = Keyword.get(opts, :complex, false)
    parallel_var = Macro.var(:parallel, __MODULE__)

    function_args = args ++ [parallel_var]

    float_cases =
      for bits <- bit_values, n_dim <- 1..n_dims do
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

    complex_cases =
      for bits <- bit_values, n_dim <- 1..n_dims do
        scalar_module =
          Module.concat([
            "SciEx",
            "Complex#{bits}"
          ])

        array_module =
          Module.concat([
            "SciEx",
            "Complex#{bits}",
            "Array#{n_dim}"
          ])

        maybe_scalar_scalar_case =
          if n_dim == 1 do
            quote do
              {%unquote(scalar_module){}, %unquote(scalar_module){}} ->
                SciEx.SciExNif.unquote(:"#{prefix}_complex#{bits}_#{rs_f}_scalar_scalar")(
                  unquote_splicing(args)
                )
            end
          else
            []
          end

        scalar_array_case =
          quote do
            {%unquote(scalar_module){}, %unquote(array_module){}} ->
              SciEx.SciExNif.unquote(:"#{prefix}_complex#{bits}_#{rs_f}_scalar_array#{n_dim}")(
                unquote_splicing(function_args)
              )
          end

        array_scalar_case =
          quote do
            {%unquote(array_module){}, %unquote(scalar_module){}} ->
              SciEx.SciExNif.unquote(:"#{prefix}_complex#{bits}_#{rs_f}_array#{n_dim}_scalar")(
                unquote_splicing(function_args)
              )
          end

        array_array_case =
          quote do
            {%unquote(array_module){}, %unquote(array_module){}} ->
              SciEx.SciExNif.unquote(
                :"#{prefix}_complex#{bits}_#{rs_f}_array#{n_dim}_array#{n_dim}"
              )(unquote_splicing(function_args))
          end

        [
          maybe_scalar_scalar_case,
          scalar_array_case,
          array_scalar_case,
          array_array_case
        ]
      end

    cases =
      case {float?, complex?} do
        {true, true} ->
          List.flatten([float_cases, complex_cases])

        {true, false} ->
          List.flatten(float_cases)

        {false, true} ->
          List.flatten(complex_cases)

        {false, false} ->
          raise "No types given"
      end

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
  Define a function that takes array of 64-bit complexs as the
  first argument for 1D, 2D, ..., 6D arrays by calling the
  corresponding NIF defined on the rust side.
  """
  defmacro def_complex(call = {_, meta, _}) do
    {f, [array | _rest] = args} = Macro.decompose_call(call)

    cases =
      for nr_of_bits <- [64, 32] do
        for n_dim <- 1..6 do
          array_module =
            Module.concat([
              "SciEx",
              "Complex#{nr_of_bits}",
              "Array#{n_dim}"
            ])

          quote do
            %unquote(array_module){} ->
              SciEx.SciExNif.unquote(:"complex#{nr_of_bits}_#{f}_array#{n_dim}")(
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
