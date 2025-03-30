defmodule SciEx.Complex32 do
  defstruct resource: nil

  alias SciEx.SciExNif

  def new(re, im) do
    SciExNif.complex32_new(re, im)
  end

  defimpl Inspect do
    alias Inspect.Algebra, as: IAlgebra

    def inspect(z, _opts) do
      IAlgebra.concat([
        "#SciEx.Complex32<",
        SciEx.SciExNif.complex32_inspect(z),
        ">"
      ])
    end
  end
end
