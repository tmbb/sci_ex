defmodule SciExTest.Float64.ArrayCreationTest do
  use ExUnit.Case, async: true
  use ExUnitProperties

  alias SciEx.Float64
  alias SciEx.ListUtils

  property "can create 1D array from list (32 bits)" do
    check all n1 <- StreamData.integer(0..100),
              flat <- StreamData.list_of(StreamData.float(), length: n1) do
      # Test both the raising version and the non-raising version
      assert {:ok, %Float64.Array1{}} = Float64.Array1.from_list(flat)
      assert %Float64.Array1{} = Float64.Array1.from_list!(flat)
    end
  end

  property "can create 2D array from list (64 bits)" do
    check all n1 <- StreamData.integer(1..10),
              n2 <- StreamData.integer(1..10),
              flat <- StreamData.list_of(StreamData.float(), length: n1 * n2),
              nested = ListUtils.reshape!(flat, [n1, n2]) do
      # Test both the raising version and the non-raising version
      assert {:ok, %Float64.Array2{}} = Float64.Array2.from_list(nested)
      assert %Float64.Array2{} = Float64.Array2.from_list!(nested)
    end
  end

  property "can create 3D array from list (64 bits)" do
    check all n1 <- StreamData.integer(1..10),
              n2 <- StreamData.integer(1..10),
              n3 <- StreamData.integer(1..10),
              flat <- StreamData.list_of(StreamData.float(), length: n1 * n2 * n3),
              nested = ListUtils.reshape!(flat, [n1, n2, n3]) do
      # Test both the raising version and the non-raising version
      assert {:ok, %Float64.Array3{}} = Float64.Array3.from_list(nested)
      assert %Float64.Array3{} = Float64.Array3.from_list!(nested)
    end
  end

  property "can create 4D array from list (64 bits)" do
    check all n1 <- StreamData.integer(1..7),
              n2 <- StreamData.integer(1..7),
              n3 <- StreamData.integer(1..7),
              n4 <- StreamData.integer(1..7),
              flat <- StreamData.list_of(StreamData.float(), length: n1 * n2 * n3 * n4),
              nested = ListUtils.reshape!(flat, [n1, n2, n3, n4]) do
      # Test both the raising version and the non-raising version
      assert {:ok, %Float64.Array4{}} = Float64.Array4.from_list(nested)
      assert %Float64.Array4{} = Float64.Array4.from_list!(nested)
    end
  end

  property "can create 5D array from list (64 bits)" do
    check all n1 <- StreamData.integer(1..7),
              n2 <- StreamData.integer(1..7),
              n3 <- StreamData.integer(1..7),
              n4 <- StreamData.integer(1..7),
              n5 <- StreamData.integer(1..7),
              flat <- StreamData.list_of(StreamData.float(), length: n1 * n2 * n3 * n4 * n5),
              nested = ListUtils.reshape!(flat, [n1, n2, n3, n4, n5]) do
      # Test both the raising version and the non-raising version
      assert {:ok, %Float64.Array5{}} = Float64.Array5.from_list(nested)
      assert %Float64.Array5{} = Float64.Array5.from_list!(nested)
    end
  end

  property "can create 6D array from list (64 bits)" do
    check all n1 <- StreamData.integer(1..6),
              n2 <- StreamData.integer(1..6),
              n3 <- StreamData.integer(1..6),
              n4 <- StreamData.integer(1..6),
              n5 <- StreamData.integer(1..6),
              n6 <- StreamData.integer(1..6),
              flat <- StreamData.list_of(StreamData.float(), length: n1 * n2 * n3 * n4 * n5 * n6),
              nested = ListUtils.reshape!(flat, [n1, n2, n3, n4, n5, n6]) do
      # Test both the raising version and the non-raising version
      assert {:ok, %Float64.Array6{}} = Float64.Array6.from_list(nested)
      assert %Float64.Array6{} = Float64.Array6.from_list!(nested)
    end
  end
end
