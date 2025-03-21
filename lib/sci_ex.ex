defmodule SciEx do
  @moduledoc """
  Documentation for `SciEx`.
  """

  import SciEx.ArrayHelpers

  def_vectorized_bin_op_f64(a + b, :add, :add)

  @doc """
  TODO
  """
  def_f64(acos(array))

  @doc """
  TODO
  """
  def_f64(acosh(array))

  @doc """
  TODO
  """
  def_f64(asin(array))

  @doc """
  TODO
  """
  def_f64(asinh(array))

  @doc """
  TODO
  """
  def_f64(atan(array))

  @doc """
  TODO
  """
  def_f64(atan2(array, other))

  @doc """
  TODO
  """
  def_f64(atanh(array))

  @doc """
  TODO
  """
  def_f64(cbrt(array))

  @doc """
  TODO
  """
  def_f64(ceil(array))

  @doc """
  TODO
  """
  def_f64(cos(array))

  @doc """
  TODO
  """
  def_f64(cosh(array))

  @doc """
  TODO
  """
  def_f64(div_euclid(array, rhs))

  @doc """
  TODO
  """
  def_f64(erf(array))

  @doc """
  TODO
  """
  def_f64(erfc(array))

  @doc """
  TODO
  """
  def_f64(exp(array))

  @doc """
  TODO
  """
  def_f64(exp2(array))

  @doc """
  TODO
  """
  def_f64(exp_m1(array))

  @doc """
  TODO
  """
  def_f64(floor(array))

  @doc """
  TODO
  """
  def_f64(fract(array))

  @doc """
  TODO
  """
  def_f64(hypot(array, other))

  @doc """
  TODO
  """
  def_f64(j0(array))

  @doc """
  TODO
  """
  def_f64(j1(array))

  @doc """
  TODO
  """
  def_f64(lgamma(array))

  @doc """
  TODO
  """
  def_f64(ln(array))

  @doc """
  TODO
  """
  def_f64(ln_1p(array))

  @doc """
  TODO
  """
  def_f64(log(array, base))

  @doc """
  TODO
  """
  def_f64(log10(array))

  @doc """
  TODO
  """
  def_f64(log2(array))

  @doc """
  TODO
  """
  def_f64(mul_add(array, a, b))

  @doc """
  TODO
  """
  def_f64(powf(array, n))

  @doc """
  TODO
  """
  def_f64(powi(array, n))

  @doc """
  TODO
  """
  def_f64(rem_euclid(array, rhs))

  @doc """
  TODO
  """
  def_f64(round(array))

  @doc """
  TODO
  """
  def_f64(round_ties_even(array))

  @doc """
  TODO
  """
  def_f64(sin(array))

  @doc """
  TODO
  """
  def_f64(sinh(array))

  @doc """
  TODO
  """
  def_f64(sqrt(array))

  @doc """
  TODO
  """
  def_f64(tan(array))

  @doc """
  TODO
  """
  def_f64(tanh(array))

  @doc """
  TODO
  """
  def_f64(trunc(array))

  @doc """
  TODO
  """
  def_f64(y0(array))

  @doc """
  TODO
  """
  def_f64(y1(array))
end
