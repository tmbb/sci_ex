defmodule SciExTest.DotProductTest do
  use ExUnit.Case, async: true
  use ExUnitProperties

  alias SciEx.Float32

  property "product of zero square matrices is  (float, 32 bits)" do
    check all n <- StreamData.integer(1..1000) do
      m = Float32.Array2.zeros(n, n)
      assert SciEx.equal?(SciEx.dot(m, m), m)
    end
  end
end
