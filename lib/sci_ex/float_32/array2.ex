defmodule SciEx.Float32.Array2 do
  @moduledoc """
  2D Array of 32-bit floating point numbers
  """
  use SciEx.FloatArrayModuleBuilder, bits: 32, dim: 2
  alias SciEx.SciExNif

  @spec from_image(Path.t()) :: __MODULE__.t()
  def from_image(path) do
    SciExNif.visualization_float32_array2_from_gray_image(path)
  end
end
