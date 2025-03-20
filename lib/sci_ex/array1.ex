defmodule SciEx.Array1 do
  defstruct resource: nil

  alias SciEx.SciExNif

  def zeros(n) do
    SciExNif.array1_zeros(n)
  end

  defimpl Inspect do
    alias Inspect.Algebra, as: IAlgebra

    def inspect(array1, _opts) do
      IAlgebra.concat([
        "#SciEx.Array1<",
        SciExNif.array1_inspect(array1),
        ">"
      ])
    end
  end
end
