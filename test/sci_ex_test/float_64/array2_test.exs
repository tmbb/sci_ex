defmodule SciExTest.Float64.Array2Test do
  use ExUnit.Case, async: true
  use ExUnitProperties

  alias SciEx.Float64.Array2

  test "create 2D array from grayscale array" do
    height_map = Array2.from_image("test/data/visualization/heightmap.png")
    assert %Array2{} = height_map
  end
end
