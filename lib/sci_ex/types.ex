defmodule SciEx.Types do
  @moduledoc """
  Common `SciEx` types used in several modules.
  """

  alias SciEx.Float64
  alias SciEx.Float32

  @typedoc """
  An array (1D through 6D) of floating point values.
  """
  @type float_array() ::
          Float64.Array1.t()
          | Float64.Array2.t()
          | Float64.Array3.t()
          | Float64.Array4.t()
          | Float64.Array5.t()
          | Float64.Array6.t()
          | Float32.Array1.t()
          | Float32.Array2.t()
          | Float32.Array3.t()
          | Float32.Array4.t()
          | Float32.Array5.t()
          | Float32.Array6.t()

  @typedoc """
  Values that can used operations with floating point arrays
  in operations such as addition, subtraction, multiplication
  and division.
  """
  @type float_value() :: number() | float_array()
end
