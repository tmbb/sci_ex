defmodule SciEx.Float64.Array2 do
  @moduledoc """
  2D Array of 64it floating points
  """

  defstruct resource: nil

  @type t :: %__MODULE__{}

  alias SciEx.SciExNif

  require SciEx.ArrayHelpers
  SciEx.ArrayHelpers.bind_comparison_array_ops_to_sci_nifs(__MODULE__, :float64_array2)

  @doc """
  Creates an array os zeros (`0.0`) with the given dimensions.
  """
  def zeros(n1, n2), do: SciExNif.float64_array2_zeros(n1, n2)

  @doc """
  Creates an array os ones (`1.0`) with the given dimensions.
  """
  def ones(n1, n2), do: SciExNif.float64_array2_ones(n1, n2)

  defimpl Inspect do
    alias Inspect.Algebra, as: IAlgebra

    def inspect(array2, _opts) do
      IAlgebra.concat([
        "#SciEx.Float64.Array2<",
        SciExNif.float64_array2_inspect(array2),
        ">"
      ])
    end
  end
end
