defmodule SciEx.Float32.ContinuousDensityResult1D do
  @moduledoc """
  The empirical estimate for a continuous probability density
  implemented using 32-bit floating point numbers.
  """

  @type t() :: %__MODULE__{}

  defstruct grid: nil,
            density: nil,
            bandwidth: nil
end
