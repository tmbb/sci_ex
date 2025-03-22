defmodule SciEx.RandomDistBuilder do
  @moduledoc false

  # A utility to make it easier to bind native distributions.
  # This macro takes care of generating the random seed that will
  # be given to the rust functions so that things can be made reproducible.
  defmacro defdraw(call) do
    {f, args} = Macro.decompose_call(call)

    arg_variables =
      for arg <- args do
        case arg do
          {arg_var, arg_type} when arg_type in [:list_of_floats, :float, :integer] ->
            arg_var

          {arg_var, _} ->
            raise "Invalid type coercion for `#{arg_var}` in function #{Macro.to_string(call)}"

          other ->
            other
        end
      end

    df_func_name = :"stats_#{f}"
    seed = Macro.var(:seed, __MODULE__)
    df_args = [seed | arg_variables]

    type_conversions =
      for {arg_var, arg_type} <- args do
        case arg_type do
          :list_of_floats ->
            [
              quote do
                unquote(arg_var) = Enum.map(unquote(arg_var), &:erlang.float/1)
              end
            ]

          :float ->
            [
              quote do
                unquote(arg_var) = :erlang.float(unquote(arg_var))
              end
            ]

          _other ->
            []
        end
      end
      |> List.flatten()

    quote do
      def unquote(f)(unquote_splicing(arg_variables)) do
        # Get the maximum random seed from the calling module attribute
        unquote(seed) = :rand.uniform(@max_random_seed)

        # Convert some of the numbers to floats
        unquote_splicing(type_conversions)

        apply(
          SciEx.SciExNif,
          unquote(df_func_name),
          unquote(df_args)
        )
      end
    end
  end
end
