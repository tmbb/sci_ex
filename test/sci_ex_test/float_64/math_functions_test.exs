defmodule SciExTest.Float64.MathFunctionsTest do
  use ExUnit.Case
  use ExUnitProperties

  doctest SciEx

  alias SciEx.Float64.{Array1, Array2, Array3, Array4, Array5, Array6}

  test "acos function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acos(x)
  end

  test "acosh function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acosh(x)
  end

  test "asin function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asin(x)
  end

  test "asinh function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asinh(x)
  end

  test "atan function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atan(x)
  end

  test "atanh function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atanh(x)
  end

  test "cbrt function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cbrt(x)
  end

  test "ceil function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ceil(x)
  end

  test "cos function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cos(x)
  end

  test "cosh function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cosh(x)
  end

  test "erf function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.erf(x)
  end

  test "erfc function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.erfc(x)
  end

  test "exp2 function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp2(x)
  end

  test "exp function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp(x)
  end

  test "exp_m1 function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp_m1(x)
  end

  test "floor function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.floor(x)
  end

  test "fract function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.fract(x)
  end

  test "j0 function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.j0(x)
  end

  test "j1 function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.j1(x)
  end

  test "lgamma function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.lgamma(x)
  end

  test "ln_1p function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln_1p(x)
  end

  test "ln function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln(x)
  end

  test "log10 function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.log10(x)
  end

  test "log2 function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.log2(x)
  end

  test "round function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.round(x)
  end

  test "round_ties_even function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.round_ties_even(x)
  end

  test "sin function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sin(x)
  end

  test "sinh function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sinh(x)
  end

  test "sqrt function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sqrt(x)
  end

  test "tan function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tan(x)
  end

  test "tanh function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tanh(x)
  end

  test "trunc function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.trunc(x)
  end

  test "y0 function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.y0(x)
  end

  test "y1 function works on 1D array" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.y1(x)
  end

  test "acos function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acos(x)
  end

  test "acosh function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acosh(x)
  end

  test "asin function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asin(x)
  end

  test "asinh function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asinh(x)
  end

  test "atan function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atan(x)
  end

  test "atanh function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atanh(x)
  end

  test "cbrt function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cbrt(x)
  end

  test "ceil function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ceil(x)
  end

  test "cos function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cos(x)
  end

  test "cosh function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cosh(x)
  end

  test "erf function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.erf(x)
  end

  test "erfc function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.erfc(x)
  end

  test "exp2 function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp2(x)
  end

  test "exp function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp(x)
  end

  test "exp_m1 function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp_m1(x)
  end

  test "floor function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.floor(x)
  end

  test "fract function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.fract(x)
  end

  test "j0 function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.j0(x)
  end

  test "j1 function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.j1(x)
  end

  test "lgamma function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.lgamma(x)
  end

  test "ln_1p function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln_1p(x)
  end

  test "ln function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln(x)
  end

  test "log10 function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.log10(x)
  end

  test "log2 function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.log2(x)
  end

  test "round function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.round(x)
  end

  test "round_ties_even function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.round_ties_even(x)
  end

  test "sin function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sin(x)
  end

  test "sinh function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sinh(x)
  end

  test "sqrt function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sqrt(x)
  end

  test "tan function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tan(x)
  end

  test "tanh function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tanh(x)
  end

  test "trunc function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.trunc(x)
  end

  test "y0 function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.y0(x)
  end

  test "y1 function works on 2D array" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.y1(x)
  end

  test "acos function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acos(x)
  end

  test "acosh function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acosh(x)
  end

  test "asin function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asin(x)
  end

  test "asinh function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asinh(x)
  end

  test "atan function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atan(x)
  end

  test "atanh function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atanh(x)
  end

  test "cbrt function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cbrt(x)
  end

  test "ceil function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ceil(x)
  end

  test "cos function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cos(x)
  end

  test "cosh function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cosh(x)
  end

  test "erf function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.erf(x)
  end

  test "erfc function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.erfc(x)
  end

  test "exp2 function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp2(x)
  end

  test "exp function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp(x)
  end

  test "exp_m1 function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp_m1(x)
  end

  test "floor function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.floor(x)
  end

  test "fract function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.fract(x)
  end

  test "j0 function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.j0(x)
  end

  test "j1 function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.j1(x)
  end

  test "lgamma function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.lgamma(x)
  end

  test "ln_1p function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln_1p(x)
  end

  test "ln function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln(x)
  end

  test "log10 function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.log10(x)
  end

  test "log2 function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.log2(x)
  end

  test "round function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.round(x)
  end

  test "round_ties_even function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.round_ties_even(x)
  end

  test "sin function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sin(x)
  end

  test "sinh function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sinh(x)
  end

  test "sqrt function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sqrt(x)
  end

  test "tan function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tan(x)
  end

  test "tanh function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tanh(x)
  end

  test "trunc function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.trunc(x)
  end

  test "y0 function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.y0(x)
  end

  test "y1 function works on 3D array" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.y1(x)
  end

  test "acos function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acos(x)
  end

  test "acosh function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acosh(x)
  end

  test "asin function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asin(x)
  end

  test "asinh function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asinh(x)
  end

  test "atan function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atan(x)
  end

  test "atanh function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atanh(x)
  end

  test "cbrt function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cbrt(x)
  end

  test "ceil function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ceil(x)
  end

  test "cos function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cos(x)
  end

  test "cosh function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cosh(x)
  end

  test "erf function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.erf(x)
  end

  test "erfc function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.erfc(x)
  end

  test "exp2 function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp2(x)
  end

  test "exp function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp(x)
  end

  test "exp_m1 function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp_m1(x)
  end

  test "floor function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.floor(x)
  end

  test "fract function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.fract(x)
  end

  test "j0 function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.j0(x)
  end

  test "j1 function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.j1(x)
  end

  test "lgamma function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.lgamma(x)
  end

  test "ln_1p function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln_1p(x)
  end

  test "ln function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln(x)
  end

  test "log10 function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.log10(x)
  end

  test "log2 function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.log2(x)
  end

  test "round function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.round(x)
  end

  test "round_ties_even function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.round_ties_even(x)
  end

  test "sin function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sin(x)
  end

  test "sinh function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sinh(x)
  end

  test "sqrt function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sqrt(x)
  end

  test "tan function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tan(x)
  end

  test "tanh function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tanh(x)
  end

  test "trunc function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.trunc(x)
  end

  test "y0 function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.y0(x)
  end

  test "y1 function works on 4D array" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.y1(x)
  end

  test "acos function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acos(x)
  end

  test "acosh function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acosh(x)
  end

  test "asin function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asin(x)
  end

  test "asinh function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asinh(x)
  end

  test "atan function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atan(x)
  end

  test "atanh function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atanh(x)
  end

  test "cbrt function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cbrt(x)
  end

  test "ceil function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ceil(x)
  end

  test "cos function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cos(x)
  end

  test "cosh function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cosh(x)
  end

  test "erf function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.erf(x)
  end

  test "erfc function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.erfc(x)
  end

  test "exp2 function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp2(x)
  end

  test "exp function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp(x)
  end

  test "exp_m1 function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp_m1(x)
  end

  test "floor function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.floor(x)
  end

  test "fract function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.fract(x)
  end

  test "j0 function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.j0(x)
  end

  test "j1 function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.j1(x)
  end

  test "lgamma function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.lgamma(x)
  end

  test "ln_1p function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln_1p(x)
  end

  test "ln function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln(x)
  end

  test "log10 function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.log10(x)
  end

  test "log2 function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.log2(x)
  end

  test "round function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.round(x)
  end

  test "round_ties_even function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.round_ties_even(x)
  end

  test "sin function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sin(x)
  end

  test "sinh function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sinh(x)
  end

  test "sqrt function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sqrt(x)
  end

  test "tan function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tan(x)
  end

  test "tanh function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tanh(x)
  end

  test "trunc function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.trunc(x)
  end

  test "y0 function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.y0(x)
  end

  test "y1 function works on 5D array" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.y1(x)
  end

  test "acos function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acos(x)
  end

  test "acosh function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acosh(x)
  end

  test "asin function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asin(x)
  end

  test "asinh function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asinh(x)
  end

  test "atan function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atan(x)
  end

  test "atanh function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atanh(x)
  end

  test "cbrt function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cbrt(x)
  end

  test "ceil function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ceil(x)
  end

  test "cos function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cos(x)
  end

  test "cosh function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cosh(x)
  end

  test "erf function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.erf(x)
  end

  test "erfc function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.erfc(x)
  end

  test "exp2 function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp2(x)
  end

  test "exp function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp(x)
  end

  test "exp_m1 function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp_m1(x)
  end

  test "floor function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.floor(x)
  end

  test "fract function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.fract(x)
  end

  test "j0 function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.j0(x)
  end

  test "j1 function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.j1(x)
  end

  test "lgamma function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.lgamma(x)
  end

  test "ln_1p function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln_1p(x)
  end

  test "ln function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln(x)
  end

  test "log10 function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.log10(x)
  end

  test "log2 function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.log2(x)
  end

  test "round function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.round(x)
  end

  test "round_ties_even function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.round_ties_even(x)
  end

  test "sin function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sin(x)
  end

  test "sinh function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sinh(x)
  end

  test "sqrt function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sqrt(x)
  end

  test "tan function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tan(x)
  end

  test "tanh function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tanh(x)
  end

  test "trunc function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.trunc(x)
  end

  test "y0 function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.y0(x)
  end

  test "y1 function works on 6D array" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.y1(x)
  end
end
