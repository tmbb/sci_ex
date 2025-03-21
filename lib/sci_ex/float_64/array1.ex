defmodule SciEx.Float64.Array1 do
  @moduledoc """
  1D Array of 64it floating points
  """

  defstruct resource: nil

  @type t :: %__MODULE__{}

  alias SciEx.SciExNif

  require SciEx.ArrayHelpers
  SciEx.ArrayHelpers.bind_comparison_array_ops_to_sci_nifs(__MODULE__, :float64_array1)

  @doc """
  Creates an array os zeros (`0.0`) with the given dimensions.
  """
  def zeros(n), do: SciExNif.float64_array1_zeros(n)

  @doc """
  Creates an array os ones (`1.0`) with the given dimensions.
  """
  def ones(n), do: SciExNif.float64_array1_zeros(n)

  defimpl Inspect do
    alias Inspect.Algebra, as: IAlgebra

    def inspect(array1, _opts) do
      IAlgebra.concat([
        "#SciEx.F64.Array1<",
        SciExNif.float64_array1_inspect(array1),
        ">"
      ])
    end
  end
end
