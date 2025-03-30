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
  An array (1D through 6D) of complex values.
  """
  @type complex_array() ::
          Complex64.Array1.t()
          | Complex64.Array2.t()
          | Complex64.Array3.t()
          | Complex64.Array4.t()
          | Complex64.Array5.t()
          | Complex64.Array6.t()
          | Complex32.Array1.t()
          | Complex32.Array2.t()
          | Complex32.Array3.t()
          | Complex32.Array4.t()
          | Complex32.Array5.t()
          | Complex32.Array6.t()

  @typedoc """
  Scalar value representing a complex number
  """
  @type complex_number() :: Complex32.t() | Complex64.t()

  @typedoc """
  Values that can used in operations with floating point arrays
  in operations such as addition, subtraction, multiplication
  and division.
  """
  @type float_value() :: number() | float_array()

  @typedoc """
  Values that can be used in operations with complex arrays
  and complex scalars.
  """
  @type complex_value() :: complex_number() | complex_array()

  @typedoc """
  Either complex or floating point values.
  """
  @type numeric_value() :: float_value() | complex_value()
end
