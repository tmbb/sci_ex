defmodule SciExTest.VisualizationTest do
  use ExUnit.Case

  alias SciEx.{Float32, Float64}
  alias SciEx.Visualization.Contour

  test "contours for degenerate height map (64-bit)" do
    height_map = Float64.Array2.ones(100, 100)
    contours = SciEx.SciExNif.visualization_float64_contour_builder(height_map, [0.5], false)
    assert [%Contour{}] = contours
  end

  test "contours for a real height map (64-bit)" do
    height_map = Float64.Array2.from_image("test/data/visualization/heightmap.png")
    contours = SciEx.SciExNif.visualization_float64_contour_builder(
      height_map,
      [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9],
      false
    )

    assert is_list(contours)
    assert length(contours) == 9
  end

  test "contours for degenerate height map (32-bit)" do
    height_map = Float32.Array2.ones(100, 100)
    contours = SciEx.SciExNif.visualization_float32_contour_builder(height_map, [0.5], false)
    assert [%Contour{}] = contours
  end

  test "contours for a real height map (32-bit)" do
    height_map = Float32.Array2.from_image("test/data/visualization/heightmap.png")
    contours = SciEx.SciExNif.visualization_float32_contour_builder(
      height_map,
      [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9],
      false
    )

    assert is_list(contours)
    assert length(contours) == 9
  end
end
