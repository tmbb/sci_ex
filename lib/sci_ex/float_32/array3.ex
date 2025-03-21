defmodule SciEx.Float32.Array3 do
  @moduledoc """
  3D Array of 32-bit floating point numbers
  """

  defstruct resource: nil

  @type t :: %__MODULE__{}

  alias SciEx.SciExNif

  require SciEx.ArrayHelpers
  SciEx.ArrayHelpers.bind_comparison_array_ops_to_sci_nifs(__MODULE__, :float32_array3)

  @doc """
  Creates an array os zeros (`0.0`) with the given dimensions.
  """
  def zeros(n1, n2, n3), do: SciExNif.float32_array3_zeros(n1, n2, n3)

  @doc """
  Creates an array os ones (`1.0`) with the given dimensions.
  """
  def ones(n1, n2, n3), do: SciExNif.float32_array3_ones(n1, n2, n3)

  defimpl Inspect do
    alias Inspect.Algebra, as: IAlgebra

    def inspect(array3, _opts) do
      IAlgebra.concat([
        "#SciEx.Float32.Array3<",
        SciExNif.float32_array3_inspect(array3),
        ">"
      ])
    end
  end
end
