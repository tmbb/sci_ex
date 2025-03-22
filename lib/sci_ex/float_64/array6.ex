defmodule SciEx.Float64.Array6 do
  @moduledoc """
  6D Array of 64it floating points
  """

  defstruct resource: nil

  @type t :: %__MODULE__{}

  alias SciEx.SciExNif

  require SciEx.ArrayHelpers
  SciEx.ArrayHelpers.bind_comparison_array_ops_to_sci_nifs(__MODULE__, :float64_array6)


  @doc """
  Creates an array os ones (`1.0`) with the given dimensions.

  ## Examples

      alias SciEx.Float64.Array6
      iex> #SciEx.Float64.Array6<[[[[[[0.0, 0.0],
                [0.0, 0.0]],

                [[0.0, 0.0],
                 [0.0, 0.0]]],


               [[[0.0, 0.0],
                 [0.0, 0.0]],

                [[0.0, 0.0],
                 [0.0, 0.0]]]],



              [[[[0.0, 0.0],
                 [0.0, 0.0]],

                [[0.0, 0.0],
                 [0.0, 0.0]]],


              [[[0.0, 0.0],
                [0.0, 0.0]],

                [[0.0, 0.0],
                 [0.0, 0.0]]]]],




            [[[[[0.0, 0.0],
                [0.0, 0.0]],

                [[0.0, 0.0],
                 [0.0, 0.0]]],


              [[[0.0, 0.0],
                [0.0, 0.0]],

                [[0.0, 0.0],
                 [0.0, 0.0]]]],



              [[[[0.0, 0.0],
                 [0.0, 0.0]],

                [[0.0, 0.0],
                 [0.0, 0.0]]],


               [[[0.0, 0.0],
                 [0.0, 0.0]],

                [[0.0, 0.0],
                 [0.0, 0.0]]]]]], shape=[2, 2, 2, 2, 2, 2], strides=[32, 16, 8, 4, 2, 1], layout=Cc (0x5), const ndim=6>

  """
  def zeros(n1, n2, n3, n4, n5, n6), do: SciExNif.float64_array6_zeros(n1, n2, n3, n4, n5, n6)

  @doc """
  Creates an array os zeros (`0.0`) with the given dimensions.

  ## Examples

      alias SciEx.Float64.Array6
      iex> #SciEx.Float64.Array6<[[[[[[1.0, 1.0],
                [1.0, 1.0]],

                [[1.0, 1.0],
                 [1.0, 1.0]]],


               [[[1.0, 1.0],
                 [1.0, 1.0]],

                [[1.0, 1.0],
                 [1.0, 1.0]]]],



              [[[[1.0, 1.0],
                 [1.0, 1.0]],

                [[1.0, 1.0],
                 [1.0, 1.0]]],


              [[[1.0, 1.0],
                [1.0, 1.0]],

                [[1.0, 1.0],
                 [1.0, 1.0]]]]],




            [[[[[1.0, 1.0],
                [1.0, 1.0]],

                [[1.0, 1.0],
                 [1.0, 1.0]]],


              [[[1.0, 1.0],
                [1.0, 1.0]],

                [[1.0, 1.0],
                 [1.0, 1.0]]]],



              [[[[1.0, 1.0],
                 [1.0, 1.0]],

                [[1.0, 1.0],
                 [1.0, 1.0]]],


               [[[1.0, 1.0],
                 [1.0, 1.0]],

                [[1.0, 1.0],
                 [1.0, 1.0]]]]]], shape=[2, 2, 2, 2, 2, 2], strides=[32, 16, 8, 4, 2, 1], layout=Cc (0x5), const ndim=6>

  """
  def ones(n1, n2, n3, n4, n5, n6), do: SciExNif.float64_array6_ones(n1, n2, n3, n4, n5, n6)

  defimpl Inspect do
    alias Inspect.Algebra, as: IAlgebra

    def inspect(array6, _opts) do
      IAlgebra.concat([
        "#SciEx.Float64.Array6<",
        SciExNif.float64_array6_inspect(array6),
        ">"
      ])
    end
  end
end
