defmodule SciExTest.StatisticsTest do
  use ExUnit.Case, async: true

  alias SciEx.Statistics
  alias SciEx.Random

  alias SciEx.{Float64, Float32}

  test "Elementwise maximum of array" do
    # 64 bits
    assert SciEx.max(Float64.Array1.ones(5)) == 1.0
    assert SciEx.max(Float64.Array2.ones(5, 5)) == 1.0
    assert SciEx.max(Float64.Array3.ones(5, 5, 5)) == 1.0
    assert SciEx.max(Float64.Array4.ones(5, 5, 5, 5)) == 1.0
    assert SciEx.max(Float64.Array5.ones(5, 5, 5, 5, 5)) == 1.0
    assert SciEx.max(Float64.Array6.ones(5, 5, 5, 5, 5, 5)) == 1.0
    # 32 bits
    assert SciEx.max(Float32.Array1.ones(5)) == 1.0
    assert SciEx.max(Float32.Array2.ones(5, 5)) == 1.0
    assert SciEx.max(Float32.Array3.ones(5, 5, 5)) == 1.0
    assert SciEx.max(Float32.Array4.ones(5, 5, 5, 5)) == 1.0
    assert SciEx.max(Float32.Array5.ones(5, 5, 5, 5, 5)) == 1.0
    assert SciEx.max(Float32.Array6.ones(5, 5, 5, 5, 5, 5)) == 1.0
  end

  test "Elementwise minimum of array" do
    # 64 bits
    assert SciEx.min(Float64.Array1.ones(5)) == 1.0
    assert SciEx.min(Float64.Array2.ones(5, 5)) == 1.0
    assert SciEx.min(Float64.Array3.ones(5, 5, 5)) == 1.0
    assert SciEx.min(Float64.Array4.ones(5, 5, 5, 5)) == 1.0
    assert SciEx.min(Float64.Array5.ones(5, 5, 5, 5, 5)) == 1.0
    assert SciEx.min(Float64.Array6.ones(5, 5, 5, 5, 5, 5)) == 1.0
    # 32 bits
    assert SciEx.min(Float32.Array1.ones(5)) == 1.0
    assert SciEx.min(Float32.Array2.ones(5, 5)) == 1.0
    assert SciEx.min(Float32.Array3.ones(5, 5, 5)) == 1.0
    assert SciEx.min(Float32.Array4.ones(5, 5, 5, 5)) == 1.0
    assert SciEx.min(Float32.Array5.ones(5, 5, 5, 5, 5)) == 1.0
    assert SciEx.min(Float32.Array6.ones(5, 5, 5, 5, 5, 5)) == 1.0
  end

  test "KDE for 1D distribution (unspecified limits)" do
    data = Random.draw_from_beta(2.0, 2.0, 4096)
    kde_result = Statistics.kde(data)
    # The upper and lower margins are set automatically
    # in a way that puts them outside of the domain of the PDF
    assert SciEx.max(kde_result.grid) > 1.0
    assert SciEx.min(kde_result.grid) < 0.0
  end

  test "KDE for 1D distribution (user-given lower and upper limits)" do
    data = Random.draw_from_beta(2.0, 2.0, 4096)
    kde_result = Statistics.kde(data, limits: [lower: 0.0, upper: 1.0])
    # Confirm that the margins are set
    assert SciEx.min(kde_result.grid) == 0.0
    assert_in_delta SciEx.max(kde_result.grid), 1.0, 0.01
    assert SciEx.max(kde_result.grid) <= 1.0
  end

  test "KDE for 1D distribution (user-given lower limit)" do
    data = Random.draw_from_beta(2.0, 2.0, 4096)
    kde_result = Statistics.kde(data, limits: [lower: 0.0])
    # Confirm that the lower margin is set
    assert SciEx.min(kde_result.grid) == 0.0
  end

  test "KDE for 1D distribution (user-given upper limit)" do
    data = Random.draw_from_beta(2.0, 8.0, 4096)
    kde_result = Statistics.kde(data, limits: [upper: 1.0])
    # Confirm that the upper margin is set
    assert_in_delta SciEx.max(kde_result.grid), 1.0, 0.01
    assert SciEx.max(kde_result.grid) <= 1.0
  end
end
