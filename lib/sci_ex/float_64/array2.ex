defmodule SciEx.Float64.Array2 do
  @moduledoc """
  2D Array of 64-bit floating point numbers
  """
  use SciEx.FloatArrayModuleBuilder, bits: 64, dim: 2
  alias SciEx.SciExNif

  @spec from_image(Path.t()) :: __MODULE__.t()
  def from_image(path) do
    SciExNif.visualization_float64_array2_from_gray_image(path)
  end
end
