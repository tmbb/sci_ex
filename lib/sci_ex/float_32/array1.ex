defmodule SciEx.Float32.Array1 do
  @moduledoc """
  1D Array of 32-bit floating point numbers
  """

  use SciEx.FloatArrayModuleBuilder, bits: 32, dim: 1

  alias SciEx.SciExNif

  @doc """
  Returns an array of values that partition the `[start, stop]`
  interval into `n` equal parts.
  """
  @spec linspace(number(), number(), integer()) :: t()
  def linspace(start, stop, n) when is_integer(n) and n >= 0 do
    SciExNif.float32_array1_linspace(start, stop, n)
  end

  @doc """
  Return an array of `n` numbers spaced evenly on a log scale
  (a geometric progression) on the interval `[start, stop]`.
  """
  @spec geomspace(number(), number(), integer()) :: t()
  def geomspace(start, stop, n) when is_integer(n) and n >= 0 do
    case SciExNif.float32_array1_geomspace(start, stop, n) do
      {:ok, array} ->
        array

      {:error, :badarg} ->
        raise ArgumentError, "invalid `start` and `stop` values"
    end
  end

  @doc """
  Returns an array of values of `n` numbers spaced evenly
  on a log scale Return numbers spaced evenly on a log scale.

  TODO: explain this one better
  """
  @spec logspace(number(), number(), number(), integer()) :: t()
  def logspace(base, start, stop, n) when is_integer(n) and n >= 0 do
    SciExNif.float32_array1_logspace(base, start, stop, n)
  end
end
