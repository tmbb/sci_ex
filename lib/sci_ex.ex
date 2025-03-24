defmodule SciEx do
  @moduledoc """
  Documentation for `SciEx`.
  """

  # This cutoff was determined experimentally from benchmarks.
  # It gives at leat a 2x speedup for most vectorized functions
  # for input arrays of size > 100_000.
  #
  # The speedup is even larger for large arrays, at least until
  # memory allocation becomes a bottleneck for very large arrays
  #
  # See the benchmarks in the 'benchmarks/parallel_impl.exs'.

  @default_parallellization_strategy  {:size_cutoff, 100_000}

  rust_std_lib_link = fn module, name ->
    "[`#{module}::#{name}()`](https://doc.rust-lang.org/std/primitive.f64.html#method.#{name})"
  end

  std_lib_binding_message = fn name -> """
    Binds the #{rust_std_lib_link.("f64", name)} (for 64-bit floating point numbers)
    and the #{rust_std_lib_link.("f32", name)} (for 32-bit floating point numbers).
    This function is vectorized.
    """
  end

  @unspecified_precision_message """
  > #### Unspecified precision {: .warning}
  >
  > The precision of this function is non-deterministic.
  > This means it varies by platform, Rust version, and
  > can even differ within the same execution from one
  > invocation to the next.
  > **This should not happen in practice, but those
  > are the guarantees that Rust gives us.**
  """

  import Kernel, except: [+: 2, -: 2, *: 2, /: 2]
  import SciEx.ArrayHelpers

  @doc """
  Add two values (arrays or scalars).
  If both arguments are arrays, this function implements
  element-wise subtraction.
  """

  defvectorizedbinop(a + b, :add, :add)

  @doc """
  Subtract two values (arrays or scalars).
  If both arguments are arrays, this function implements
  element-wise subtraction.
  """

  defvectorizedbinop(a - b, :subtract, :subtract)

  @doc """
  Multiply two values (arrays or scalars).
  If both arguments are arrays, this function implements
  element-wise multiplication.
  """

  defvectorizedbinop(a * b, :multiply, :multiply)

  @doc """
  Divide two values (arrays or scalars).
  If both arguments are arrays, this function implements
  element-wise division.

  Raises an error in case of division by zero.
  """

  defvectorizedbinop(a / b, :divide, :divide)

  @doc """
  Returns the largest integer less than or equal to `x`.

  This function always returns the precise result.
  """
  defvectorized1(:floor, :floor, x, [x], prefix: "math")

  @doc """
  Returns the smallest integer greater than or equal to `x`.

  This function always returns the precise result.
  """
  defvectorized1(:ceil, :ceil, x, [x], prefix: "math")

  @doc """
  Returns the nearest integer to `self`.
  If a value is half-way between two integers, round away from `0.0`.

  This function always returns the precise result.
  """
  defvectorized1(:round, :round, x, [x], prefix: "math")

  @doc """
  Returns the nearest integer to a number.
  Rounds half-way cases to the number with an even least significant digit.

  This function always returns the precise result.

  #{std_lib_binding_message.(:round)}
  """
  defvectorized1(:round_ties_even, :round_ties_even, x, [x], prefix: "math")

  @doc """
  Returns the integer part of `x`.
  This means that non-integer numbers are always truncated towards zero.

  This function always returns the precise result.

  #{std_lib_binding_message.(:trunc)}
  """
  defvectorized1(:trunc, :trunc, x, [x], prefix: "math")

  @doc """
  Returns the fractional part of `x`.

  This function always returns the precise result.

  #{std_lib_binding_message.(:fract)}
  """
  defvectorized1(:fract, :fract, x, [x], prefix: "math")

  @doc """
  Returns `e^x`, (the exponential function).

  #{std_lib_binding_message.(:exp)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:exp, :exp, x, [x], prefix: "math")

  @doc """
  Returns `2^x`.

  #{std_lib_binding_message.(:exp2)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:exp2, :exp2, x, [x], prefix: "math")

  @doc """
  Returns the natural logarithm of the number.

  This returns NaN when the number is negative, and negative
  infinity when number is zero.

  #{std_lib_binding_message.(:ln)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:ln, :ln, x, [x], prefix: "math")

  @doc """
  Returns the base 2 logarithm of the number.

  This returns NaN when the number is negative, and negative
  infinity when number is zero.

  #{std_lib_binding_message.(:log2)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:log2, :log2, x, [x], prefix: "math")

  @doc """
  Returns the base 10 logarithm of the number.

  This returns NaN when the number is negative,
  and negative infinity when number is zero.

  #{std_lib_binding_message.(:log10)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:log10, :log10, x, [x], prefix: "math")

  @doc """
  Cosine function.

  #{std_lib_binding_message.(:cos)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:cos, :cos, x, [x], prefix: "math")

  @doc """
  Sine function.

  #{std_lib_binding_message.(:sin)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:sin, :sin, x, [x], prefix: "math")

  @doc """
  Tangent function.

  #{std_lib_binding_message.(:tan)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:tan, :tan, x, [x], prefix: "math")

  @doc """
  Inverse cosine function.

  #{std_lib_binding_message.(:acos)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:acos, :acos, x, [x], prefix: "math")

  @doc """
  Inverse sine function.

  #{std_lib_binding_message.(:asin)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:asin, :asin, x, [x], prefix: "math")

  @doc """
  Inverse tangent function.

  #{std_lib_binding_message.(:atan)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:atan, :atan, x, [x], prefix: "math")

  @doc """
  TODO

  #{std_lib_binding_message.(:exp_m1)}
  """
  defvectorized1(:exp_m1, :exp_m1, x, [x], prefix: "math")

  @doc """
  Hyperbolic cosine function.

  #{std_lib_binding_message.(:cosh)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:cosh, :cosh, x, [x], prefix: "math")

  @doc """
  Hyperbolic sine function.

  #{std_lib_binding_message.(:sinh)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:sinh, :sinh, x, [x], prefix: "math")

  @doc """
  Hyperbolic tangent function.

  #{std_lib_binding_message.(:tanh)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:tanh, :tanh, x, [x], prefix: "math")

  @doc """
  Inverse hyperbolic cosine function.

  #{std_lib_binding_message.(:acosh)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:acosh, :acosh, x, [x], prefix: "math")

  @doc """
  Inverse hyperbolic sine function.

  #{std_lib_binding_message.(:sinh)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:asinh, :asinh, x, [x], prefix: "math")

  @doc """
  Inverse hyperbolic tangent function.

  #{std_lib_binding_message.(:atanh)}

  #{@unspecified_precision_message}
  """
  defvectorized1(:atanh, :atanh, x, [x], prefix: "math")

  @doc """
  TODO

  #{std_lib_binding_message.(:sqrt)}
  """
  defvectorized1(:sqrt, :sqrt, x, [x], prefix: "math")

  @doc """
  TODO

  #{std_lib_binding_message.(:j0)}
  """
  defvectorized1(:j0, :j0, x, [x], prefix: "math")

  @doc """
  TODO

  #{std_lib_binding_message.(:j1)}
  """
  defvectorized1(:j1, :j1, x, [x], prefix: "math")

  @doc """
  TODO

  #{std_lib_binding_message.(:y0)}
  """
  defvectorized1(:y0, :y0, x, [x], prefix: "math")

  @doc """
  TODO

  #{std_lib_binding_message.(:y1)}
  """
  defvectorized1(:y1, :y1, x, [x], prefix: "math")

  @doc """
  Error function.

  #{@unspecified_precision_message}
  """
  defvectorized1(:erf, :erf, x, [x], prefix: "math")

  @doc """
  Complementary error function.

  #{@unspecified_precision_message}
  """
  defvectorized1(:erfc, :erfc, x, [x], prefix: "math")

  @doc """
  TODO

  #{std_lib_binding_message.(:logp1)}
  """
  defvectorized1(:ln_1p, :log1p, x, [x], prefix: "math")

  @doc """
  TODO
  """
  defvectorized1(:lgamma, :lgamma, x, [x], prefix: "math")

  @doc """
  Returns the cube root of a number.

  #{@unspecified_precision_message}
  """
  defvectorized1(:cube_root, :cbrt, x, [x], prefix: "math")

  @doc """
  TODO
  """
  defvectorized1(:abs, :abs, x, [x], prefix: "math")

  @doc """
  Returns the logarithm of the number (or array) with respect to
  an arbitrary base.

  This returns NaN when the number is negative, and negative infinity
  when number is zero.

  The result might not be correctly rounded owing to implementation details;
  `SciEx.log2/1` can produce more accurate results for base 2, and
  `SciEx.log10/1` can produce more accurate results for base 10.

  #{@unspecified_precision_message}
  """
  defvectorized2(:log, :log, [x, y], [x, y], prefix: "math")

  @doc """
  TODO
  """
  defvectorized2(:powf, :powf, [x, y], [x, y], prefix: "math")

  @doc """
  TODO
  """
  defvectorized2(:hypot, :hypot, [x, y], [x, y], prefix: "math")

  @doc """
  TODO
  """
  defvectorized2(:div_euclid, :div_euclid, [x, y], [x, y], prefix: "math")

  @doc """
  TODO
  """
  defvectorized2(:rem_euclid, :rem_euclid, [x, y], [x, y], prefix: "math")

  # Parallelization utilities

  @doc """
  Gets the parallelization strategy from the currrent process.
  """
  def get_parallelization_strategy() do
    # Cutoff determined experimentally from benchmarks
    Process.get(
      :"$sci_ex_parallelization_strategy",
      @default_parallellization_strategy
    )
  end

  @doc """
  Puts a parallelization strategy in the current process.
  """
  def put_parallelization_strategy(strategy) do
    Process.put(:"$sci_ex_parallelization_strategy", strategy)
  end

  @doc """
  Run a function with the given parallelization strategy.

  The parallelization strategy is set for the current process
  for the duration of the function's execution and then reset
  to the previous value.
  """
  def parallel(strategy, fun) do
    old_parallelization_strategy = Process.get(:"$sci_ex_parallelization_strategy")
    try do
      put_parallelization_strategy(strategy)
      fun.()
    after
      put_parallelization_strategy(old_parallelization_strategy)
    end
  end
end
