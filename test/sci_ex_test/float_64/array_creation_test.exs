defmodule SciExTest.Float64.ArrayCreationTest do
  use ExUnit.Case, async: true
  use ExUnitProperties

  alias SciEx.Float64.Array1

  property "can create 1D array from list" do
    check all floats <- StreamData.list_of(StreamData.float()) do
      assert %Array1{} = Array1.from_list(floats)
    end
  end
end
