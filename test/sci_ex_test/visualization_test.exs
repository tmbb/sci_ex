defmodule SciExTest.VisualizationTest do
  use ExUnit.Case, async: true

  alias SciEx.{Float32, Float64}
  alias SciEx.Visualization
  alias SciEx.Visualization.Contour

  test "contours for degenerate height map (64-bit)" do
    height_map = Float64.Array2.ones(100, 100)
    contours = Visualization.contours(height_map, [0.5])
    assert [%Contour{}] = contours
  end

  test "contours for a real height map (64-bit)" do
    height_map = Float64.Array2.from_image("test/data/visualization/heightmap.png")
    thresholds = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]

    contours = Visualization.contours(height_map, thresholds)

    assert is_list(contours)
    assert length(contours) == 9
  end

  test "contours for degenerate height map (32-bit)" do
    height_map = Float32.Array2.ones(100, 100)
    contours = Visualization.contours(height_map, [0.5])
    assert [%Contour{}] = contours
  end

  test "contours for a real height map (32-bit)" do
    height_map = Float32.Array2.from_image("test/data/visualization/heightmap.png")
    thresholds = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]

    contours = Visualization.contours(height_map, thresholds)

    assert is_list(contours)
    assert length(contours) == 9
  end

  test "contours only work on 2D arrays" do
    thresholds = [0.1, 0.2, 0.3, 0.4]

    assert_raise ArgumentError, fn ->
      Visualization.contours(Float64.Array1.ones(5), thresholds)
    end

    assert_raise ArgumentError, fn ->
      Visualization.contours(Float32.Array1.ones(5), thresholds)
    end

    assert_raise ArgumentError, fn ->
      Visualization.contours(Float64.Array3.ones(5, 5, 5), thresholds)
    end

    assert_raise ArgumentError, fn ->
      Visualization.contours(Float32.Array3.ones(5, 5, 5), thresholds)
    end

    assert_raise ArgumentError, fn ->
      Visualization.contours(Float64.Array4.ones(5, 5, 5, 5), thresholds)
    end

    assert_raise ArgumentError, fn ->
      Visualization.contours(Float32.Array4.ones(5, 5, 5, 5), thresholds)
    end

    assert_raise ArgumentError, fn ->
      Visualization.contours(Float64.Array5.ones(5, 5, 5, 5, 5), thresholds)
    end

    assert_raise ArgumentError, fn ->
      Visualization.contours(Float32.Array5.ones(5, 5, 5, 5, 5), thresholds)
    end

    assert_raise ArgumentError, fn ->
      Visualization.contours(Float64.Array6.ones(5, 5, 5, 5, 5, 5), thresholds)
    end

    assert_raise ArgumentError, fn ->
      Visualization.contours(Float32.Array6.ones(5, 5, 5, 5, 5, 5), thresholds)
    end
  end
end
