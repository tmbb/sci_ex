defmodule SciExTest do
  use ExUnit.Case
  doctest SciEx

  alias SciEx.{Array1, Array2}

  test "create Array1" do
    assert %Array1{} = Array1.zeros(100000)
  end

  test "cosine of 1D array" do
    assert %Array1{} = SciEx.cos(Array1.zeros(100_000_000))
  end

  test "cosine of 2D array" do
    assert %Array2{} = SciEx.cos(Array2.zeros(100, 100))
  end
end
