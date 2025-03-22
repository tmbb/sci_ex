defmodule SciEx.Types do
  @moduledoc """
  Common `SciEx` types used in several modules.
  """

  alias SciEx.Float64

  @typedoc """
  An array (1D through 6D) with floating point values.
  """
  @type float64_array() ::
          Float64.Array1.t()
          | Float64.Array2.t()
          | Float64.Array3.t()
          | Float64.Array4.t()
          | Float64.Array5.t()
          | Float64.Array6.t()

  @typedoc """
  Values that can used operations with floating point arrays
  in operations such as addition, subtraction, multiplication
  and division.
  """
  @type float64_value() :: number() | float64_array()
end
