defmodule SciEx do
  @moduledoc """
  Documentation for `SciEx`.
  """

  import Kernel, except: [+: 2, -: 2, *: 2, /: 2]
  import SciEx.ArrayHelpers

  @doc """
  Add two values (arrays or scalars).
  If both arguments are arrays, this function implements
  element-wise subtraction.
  """
  def_vectorized_bin_op_float(a + b, :add, :add)

  @doc """
  Subtract two values (arrays or scalars).
  If both arguments are arrays, this function implements
  element-wise subtraction.
  """
  def_vectorized_bin_op_float(a - b, :subtract, :subtract)

  @doc """
  Multiply two values (arrays or scalars).
  If both arguments are arrays, this function implements
  element-wise multiplication.
  """
  def_vectorized_bin_op_float(a * b, :multiply, :multiply)

  @doc """
  Divide two values (arrays or scalars).
  If both arguments are arrays, this function implements
  element-wise division.

  Raises an error in case of division by zero.
  """
  def_vectorized_bin_op_float(a / b, :divide, :divide)

  @doc """
  TODO
  """
  def_float(acos(array))

  @doc """
  TODO
  """
  def_float(acosh(array))

  @doc """
  TODO
  """
  def_float(asin(array))

  @doc """
  TODO
  """
  def_float(asinh(array))

  @doc """
  TODO
  """
  def_float(atan(array))

  @doc """
  TODO
  """
  def_float(atan2(array, other))

  @doc """
  TODO
  """
  def_float(atanh(array))

  @doc """
  TODO
  """
  def_float(cbrt(array))

  @doc """
  TODO
  """
  def_float(ceil(array))

  @doc """
  TODO
  """
  def_float(cos(array))

  @doc """
  TODO
  """
  def_float(cosh(array))

  @doc """
  TODO
  """
  def_float(div_euclid(array, rhs))

  @doc """
  TODO
  """
  def_float(erf(array))

  @doc """
  TODO
  """
  def_float(erfc(array))

  @doc """
  TODO
  """
  def_float(exp(array))

  @doc """
  TODO
  """
  def_float(exp2(array))

  @doc """
  TODO
  """
  def_float(exp_m1(array))

  @doc """
  TODO
  """
  def_float(floor(array))

  @doc """
  TODO
  """
  def_float(fract(array))

  @doc """
  TODO
  """
  def_float(hypot(array, other))

  @doc """
  TODO
  """
  def_float(j0(array))

  @doc """
  TODO
  """
  def_float(j1(array))

  @doc """
  TODO
  """
  def_float(lgamma(array))

  @doc """
  TODO
  """
  def_float(ln(array))

  @doc """
  TODO
  """
  def_float(ln_1p(array))

  @doc """
  TODO
  """
  def_float(log(array, base))

  @doc """
  TODO
  """
  def_float(log10(array))

  @doc """
  TODO
  """
  def_float(log2(array))

  @doc """
  TODO
  """
  def_float(mul_add(array, a, b))

  @doc """
  TODO
  """
  def_float(powf(array, n))

  @doc """
  TODO
  """
  def_float(powi(array, n))

  @doc """
  TODO
  """
  def_float(rem_euclid(array, rhs))

  @doc """
  TODO
  """
  def_float(round(array))

  @doc """
  TODO
  """
  def_float(round_ties_even(array))

  @doc """
  TODO
  """
  def_float(sin(array))

  @doc """
  TODO
  """
  def_float(sinh(array))

  @doc """
  TODO
  """
  def_float(sqrt(array))

  @doc """
  TODO
  """
  def_float(tan(array))

  @doc """
  TODO
  """
  def_float(tanh(array))

  @doc """
  TODO
  """
  def_float(trunc(array))

  @doc """
  TODO
  """
  def_float(y0(array))

  @doc """
  TODO
  """
  def_float(y1(array))
end
