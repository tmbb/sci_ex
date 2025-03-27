defmodule SciEx.FFT do
  @moduledoc """
  Fast Fourier Transform and related algorithms.
  """

  alias SciEx.Float64
  alias SciEx.SciExNif

  defmacrop adapt_2_arg_function_to_array_dimensions(func_ast, arg1, arg2) do
    {func, _} = Code.eval_quoted(func_ast)

    quote do
      case unquote(arg1) do
        %Float64.Array1{} ->
          SciExNif.unquote(func.(1))(
            unquote(arg1),
            unquote(arg2)
          )

        %Float64.Array2{} ->
          SciExNif.unquote(func.(2))(
            unquote(arg1),
            unquote(arg2)
          )

        %Float64.Array3{} ->
          SciExNif.unquote(func.(3))(
            unquote(arg1),
            unquote(arg2)
          )

        %Float64.Array4{} ->
          SciExNif.unquote(func.(4))(
            unquote(arg1),
            unquote(arg2)
          )

        %Float64.Array5{} ->
          SciExNif.unquote(func.(5))(
            unquote(arg1),
            unquote(arg2)
          )

        %Float64.Array6{} ->
          SciExNif.unquote(func.(6))(
            unquote(arg1),
            unquote(arg2)
          )
      end
    end
  end

  @doc """
  Type-1 DCT
  """
  def dct1(array, opts \\ []) do
    axis = Keyword.get(opts, :axis, default_axis_for(array))
    validate_axis!(array, axis)
    adapt_2_arg_function_to_array_dimensions(
      fn i -> :"float64_dct1_array#{i}" end,
      array,
      axis
    )
  end

  @doc """
  Type-2 DCT. This is usually considered the "default" type-2 DCT.
  It is the inverse of the Type-3 DCT (after correcting for normalization).
  """
  def dct2(array, opts \\ []) do
    axis = Keyword.get(opts, :axis, default_axis_for(array))
    validate_axis!(array, axis)
    adapt_2_arg_function_to_array_dimensions(
      fn i -> :"float64_dct2_array#{i}" end,
      array,
      axis
    )
  end

  @doc """
  Type-3 DCT. This is the inverse of the Type-2 DCT
  (after correcting for normalization).
  """
  def dct3(array, opts \\ []) do
    axis = Keyword.get(opts, :axis, default_axis_for(array))
    validate_axis!(array, axis)
    adapt_2_arg_function_to_array_dimensions(
      fn i -> :"float64_dct3_array#{i}" end,
      array,
      axis
    )
  end

  @doc """
  Type-4 DCT
  """
  def dct4(array, opts \\ []) do
    axis = Keyword.get(opts, :axis, default_axis_for(array))
    validate_axis!(array, axis)
    adapt_2_arg_function_to_array_dimensions(
      fn i -> :"float64_dct4_array#{i}" end,
      array,
      axis
    )
  end

  @doc false
  def n_dims(%Float64.Array1{}), do: 1
  def n_dims(%Float64.Array2{}), do: 2
  def n_dims(%Float64.Array3{}), do: 3
  def n_dims(%Float64.Array4{}), do: 4
  def n_dims(%Float64.Array5{}), do: 5
  def n_dims(%Float64.Array6{}), do: 6

  defp default_axis_for(array), do: n_dims(array) - 1

  defp validate_axis!(array, axis) do
    cond do
      axis >= n_dims(array) ->
        raise "Axis larger than the nr of array dimensions"

      axis < 0 ->
        raise "Axis must be >= 0"

      true ->
        :ok
    end
  end
end
