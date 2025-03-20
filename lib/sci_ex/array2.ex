defmodule SciEx.Array2 do
  defstruct resource: nil

  alias SciEx.SciExNif

  def zeros(n1, n2) do
    SciExNif.array2_zeros(n1, n2)
  end

  defimpl Inspect do
    alias Inspect.Algebra, as: IAlgebra

    def inspect(array2, _opts) do
      IAlgebra.concat([
        "#SciEx.Array2<",
        SciExNif.array2_inspect(array2),
        ">"
      ])
    end
  end
end
