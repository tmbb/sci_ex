defmodule SciEx.ArrayHelpers do
  float_array_modules = [
    SciEx.Float32.Array1,
    SciEx.Float32.Array2,
    SciEx.Float32.Array3,
    SciEx.Float32.Array4,
    SciEx.Float32.Array5,
    SciEx.Float32.Array6,
    SciEx.Float64.Array1,
    SciEx.Float64.Array2,
    SciEx.Float64.Array3,
    SciEx.Float64.Array4,
    SciEx.Float64.Array5,
    SciEx.Float64.Array6
  ]

  complex_array_modules = [
    SciEx.Complex32.Array1,
    SciEx.Complex32.Array2,
    SciEx.Complex32.Array3,
    SciEx.Complex32.Array4,
    SciEx.Complex32.Array5,
    SciEx.Complex32.Array6,
    SciEx.Complex64.Array1,
    SciEx.Complex64.Array2,
    SciEx.Complex64.Array3,
    SciEx.Complex64.Array4,
    SciEx.Complex64.Array5,
    SciEx.Complex64.Array6
  ]

  array_modules = float_array_modules ++ complex_array_modules

  @float_array_modules float_array_modules
  @complex_array_modules complex_array_modules
  @array_modules array_modules

  defmacro dimension_aware_function(atom, a, b, fallback \\ nil) do
    do_dimension_aware_function(atom, @float_array_modules, a, b, fallback)
  end

  defmacro complex_dimension_aware_function(atom, a, b, fallback \\ nil) do
    do_dimension_aware_function(atom, @complex_array_modules, a, b, fallback)
  end

  defmacro float_dimension_aware_function(atom, a, b, fallback \\ nil) do
    do_dimension_aware_function(atom, @array_modules, a, b, fallback)
  end

  defp do_dimension_aware_function(atom, modules, a, b, fallback) do
    branches =
      for module <- modules do
        quote do
          {%unquote(module){}, %unquote(module){}} ->
            unquote(module).unquote(atom)(unquote(a), unquote(b))
        end
      end

    # Fallback to structural comparison
    fallback_branch =
      case fallback do
        nil ->
          []

        {module, function} ->
          quote do
            _other ->
              apply(
                unquote(module),
                unquote(function),
                [unquote(a), unquote(b)]
              )
          end

        {module, function, trailing_args} ->
          quote do
            _other ->
              apply(
                unquote(module),
                unquote(function),
                [unquote(a), unquote(b) | unquote(trailing_args)]
              )
          end
      end

    all_branches = List.flatten([branches, fallback_branch])

    {:case,
     [],
     [{a, b}, [do: all_branches]]
    }
  end
end
