defmodule SciEx.Float64.Array4 do
  @moduledoc """
  4D Array of 64it floating points
  """

  defstruct resource: nil

  @type t :: %__MODULE__{}

  alias SciEx.SciExNif

  require SciEx.ArrayHelpers
  SciEx.ArrayHelpers.bind_comparison_array_ops_to_sci_nifs(__MODULE__, :float64_array4)

  @doc """
  Creates an array os zeros (`0.0`) with the given dimensions.
  """
  def zeros(n1, n2, n3, n4), do: SciExNif.float64_array4_zeros(n1, n2, n3, n4)

  @doc """
  Creates an array os ones (`1.0`) with the given dimensions.
  """
  def ones(n1, n2, n3, n4), do: SciExNif.float64_array4_ones(n1, n2, n3, n4)

  defimpl Inspect do
    alias Inspect.Algebra, as: IAlgebra

    def inspect(array4, _opts) do
      IAlgebra.concat([
        "#SciEx.Float64.Array4<",
        SciExNif.float64_array4_inspect(array4),
        ">"
      ])
    end
  end
end
