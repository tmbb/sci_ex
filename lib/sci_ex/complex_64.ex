defmodule SciEx.Complex64 do
  defstruct resource: nil

  alias SciEx.SciExNif

  def new(re, im) do
    SciExNif.complex64_new(re, im)
  end

  defimpl Inspect do
    alias Inspect.Algebra, as: IAlgebra

    def inspect(z, _opts) do
      IAlgebra.concat([
        "#SciEx.Complex64<",
        SciEx.SciExNif.complex64_inspect(z),
        ">"
      ])
    end
  end
end
