defmodule SciEx.Float32.Array1 do
  @moduledoc """
  1D Array of 32-bit floating point numbers
  """

  defstruct resource: nil

  @type t :: %__MODULE__{}

  alias SciEx.SciExNif

  require SciEx.ArrayHelpers
  SciEx.ArrayHelpers.bind_comparison_array_ops_to_sci_nifs(__MODULE__, :float32_array1)

  @doc """
  Creates an array os zeros (`0.0`) with the given dimensions.
  """
  def zeros(n), do: SciExNif.float32_array1_zeros(n)

  @doc """
  Creates an array os ones (`1.0`) with the given dimensions.
  """
  def ones(n), do: SciExNif.float32_array1_ones(n)

  defimpl Inspect do
    alias Inspect.Algebra, as: IAlgebra

    def inspect(array1, _opts) do
      IAlgebra.concat([
        "#SciEx.F32.Array1<",
        SciExNif.float32_array1_inspect(array1),
        ">"
      ])
    end
  end
end
