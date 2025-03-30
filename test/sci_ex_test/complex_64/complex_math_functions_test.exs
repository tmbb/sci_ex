defmodule SciExTest.Float64.MathFunctionsTest do
  use ExUnit.Case
  use ExUnitProperties

  doctest SciEx

  alias SciEx.Float64.{Array1, Array2, Array3, Array4, Array5, Array6}

  test "math_complex64_exp_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp(z, parallel: :never_parallel)
  end

  test "math_complex64_exp_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp(z, parallel: :never_parallel)
  end

  test "math_complex64_exp_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_exp_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_exp_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp(z)
  end

  test "math_complex64_exp_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp(z, parallel: :never_parallel)
  end

  test "math_complex64_exp_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp(z, parallel: :never_parallel)
  end

  test "math_complex64_exp_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_exp_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_exp_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp(z)
  end

  test "math_complex64_exp_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp(z, parallel: :never_parallel)
  end

  test "math_complex64_exp_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp(z, parallel: :never_parallel)
  end

  test "math_complex64_exp_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_exp_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_exp_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp(z)
  end

  test "math_complex64_exp_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp(z, parallel: :never_parallel)
  end

  test "math_complex64_exp_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp(z, parallel: :never_parallel)
  end

  test "math_complex64_exp_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_exp_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_exp_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp(z)
  end

  test "math_complex64_exp_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp(z, parallel: :never_parallel)
  end

  test "math_complex64_exp_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp(z, parallel: :never_parallel)
  end

  test "math_complex64_exp_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_exp_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_exp_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp(z)
  end

  test "math_complex64_exp_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp(z, parallel: :never_parallel)
  end

  test "math_complex64_exp_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp(z, parallel: :never_parallel)
  end

  test "math_complex64_exp_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_exp_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_exp_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp(z)
  end

  test "math_complex64_ln_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln(z, parallel: :never_parallel)
  end

  test "math_complex64_ln_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln(z, parallel: :never_parallel)
  end

  test "math_complex64_ln_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_ln_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_ln_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln(z)
  end

  test "math_complex64_ln_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln(z, parallel: :never_parallel)
  end

  test "math_complex64_ln_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln(z, parallel: :never_parallel)
  end

  test "math_complex64_ln_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_ln_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_ln_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln(z)
  end

  test "math_complex64_ln_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln(z, parallel: :never_parallel)
  end

  test "math_complex64_ln_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln(z, parallel: :never_parallel)
  end

  test "math_complex64_ln_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_ln_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_ln_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln(z)
  end

  test "math_complex64_ln_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln(z, parallel: :never_parallel)
  end

  test "math_complex64_ln_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln(z, parallel: :never_parallel)
  end

  test "math_complex64_ln_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_ln_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_ln_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln(z)
  end

  test "math_complex64_ln_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln(z, parallel: :never_parallel)
  end

  test "math_complex64_ln_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln(z, parallel: :never_parallel)
  end

  test "math_complex64_ln_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_ln_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_ln_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln(z)
  end

  test "math_complex64_ln_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln(z, parallel: :never_parallel)
  end

  test "math_complex64_ln_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln(z, parallel: :never_parallel)
  end

  test "math_complex64_ln_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_ln_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_ln_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln(z)
  end

  test "math_complex64_sqrt_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sqrt(z, parallel: :never_parallel)
  end

  test "math_complex64_sqrt_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sqrt(z, parallel: :never_parallel)
  end

  test "math_complex64_sqrt_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sqrt(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sqrt_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sqrt(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sqrt_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sqrt(z)
  end

  test "math_complex64_sqrt_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sqrt(z, parallel: :never_parallel)
  end

  test "math_complex64_sqrt_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sqrt(z, parallel: :never_parallel)
  end

  test "math_complex64_sqrt_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sqrt(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sqrt_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sqrt(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sqrt_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sqrt(z)
  end

  test "math_complex64_sqrt_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sqrt(z, parallel: :never_parallel)
  end

  test "math_complex64_sqrt_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sqrt(z, parallel: :never_parallel)
  end

  test "math_complex64_sqrt_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sqrt(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sqrt_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sqrt(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sqrt_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sqrt(z)
  end

  test "math_complex64_sqrt_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sqrt(z, parallel: :never_parallel)
  end

  test "math_complex64_sqrt_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sqrt(z, parallel: :never_parallel)
  end

  test "math_complex64_sqrt_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sqrt(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sqrt_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sqrt(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sqrt_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sqrt(z)
  end

  test "math_complex64_sqrt_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sqrt(z, parallel: :never_parallel)
  end

  test "math_complex64_sqrt_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sqrt(z, parallel: :never_parallel)
  end

  test "math_complex64_sqrt_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sqrt(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sqrt_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sqrt(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sqrt_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sqrt(z)
  end

  test "math_complex64_sqrt_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sqrt(z, parallel: :never_parallel)
  end

  test "math_complex64_sqrt_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sqrt(z, parallel: :never_parallel)
  end

  test "math_complex64_sqrt_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sqrt(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sqrt_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sqrt(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sqrt_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sqrt(z)
  end

  test "math_complex64_cbrt_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cbrt(z, parallel: :never_parallel)
  end

  test "math_complex64_cbrt_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cbrt(z, parallel: :never_parallel)
  end

  test "math_complex64_cbrt_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cbrt(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cbrt_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cbrt(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cbrt_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cbrt(z)
  end

  test "math_complex64_cbrt_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cbrt(z, parallel: :never_parallel)
  end

  test "math_complex64_cbrt_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cbrt(z, parallel: :never_parallel)
  end

  test "math_complex64_cbrt_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cbrt(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cbrt_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cbrt(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cbrt_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cbrt(z)
  end

  test "math_complex64_cbrt_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cbrt(z, parallel: :never_parallel)
  end

  test "math_complex64_cbrt_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cbrt(z, parallel: :never_parallel)
  end

  test "math_complex64_cbrt_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cbrt(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cbrt_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cbrt(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cbrt_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cbrt(z)
  end

  test "math_complex64_cbrt_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cbrt(z, parallel: :never_parallel)
  end

  test "math_complex64_cbrt_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cbrt(z, parallel: :never_parallel)
  end

  test "math_complex64_cbrt_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cbrt(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cbrt_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cbrt(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cbrt_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cbrt(z)
  end

  test "math_complex64_cbrt_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cbrt(z, parallel: :never_parallel)
  end

  test "math_complex64_cbrt_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cbrt(z, parallel: :never_parallel)
  end

  test "math_complex64_cbrt_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cbrt(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cbrt_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cbrt(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cbrt_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cbrt(z)
  end

  test "math_complex64_cbrt_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cbrt(z, parallel: :never_parallel)
  end

  test "math_complex64_cbrt_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cbrt(z, parallel: :never_parallel)
  end

  test "math_complex64_cbrt_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cbrt(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cbrt_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cbrt(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cbrt_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cbrt(z)
  end

  test "math_complex64_sin_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sin(z, parallel: :never_parallel)
  end

  test "math_complex64_sin_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sin(z, parallel: :never_parallel)
  end

  test "math_complex64_sin_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sin(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sin_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sin(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sin_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sin(z)
  end

  test "math_complex64_sin_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sin(z, parallel: :never_parallel)
  end

  test "math_complex64_sin_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sin(z, parallel: :never_parallel)
  end

  test "math_complex64_sin_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sin(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sin_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sin(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sin_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sin(z)
  end

  test "math_complex64_sin_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sin(z, parallel: :never_parallel)
  end

  test "math_complex64_sin_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sin(z, parallel: :never_parallel)
  end

  test "math_complex64_sin_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sin(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sin_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sin(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sin_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sin(z)
  end

  test "math_complex64_sin_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sin(z, parallel: :never_parallel)
  end

  test "math_complex64_sin_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sin(z, parallel: :never_parallel)
  end

  test "math_complex64_sin_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sin(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sin_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sin(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sin_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sin(z)
  end

  test "math_complex64_sin_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sin(z, parallel: :never_parallel)
  end

  test "math_complex64_sin_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sin(z, parallel: :never_parallel)
  end

  test "math_complex64_sin_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sin(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sin_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sin(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sin_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sin(z)
  end

  test "math_complex64_sin_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sin(z, parallel: :never_parallel)
  end

  test "math_complex64_sin_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sin(z, parallel: :never_parallel)
  end

  test "math_complex64_sin_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sin(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sin_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sin(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sin_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sin(z)
  end

  test "math_complex64_cos_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cos(z, parallel: :never_parallel)
  end

  test "math_complex64_cos_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cos(z, parallel: :never_parallel)
  end

  test "math_complex64_cos_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cos(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cos_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cos(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cos_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cos(z)
  end

  test "math_complex64_cos_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cos(z, parallel: :never_parallel)
  end

  test "math_complex64_cos_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cos(z, parallel: :never_parallel)
  end

  test "math_complex64_cos_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cos(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cos_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cos(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cos_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cos(z)
  end

  test "math_complex64_cos_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cos(z, parallel: :never_parallel)
  end

  test "math_complex64_cos_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cos(z, parallel: :never_parallel)
  end

  test "math_complex64_cos_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cos(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cos_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cos(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cos_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cos(z)
  end

  test "math_complex64_cos_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cos(z, parallel: :never_parallel)
  end

  test "math_complex64_cos_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cos(z, parallel: :never_parallel)
  end

  test "math_complex64_cos_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cos(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cos_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cos(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cos_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cos(z)
  end

  test "math_complex64_cos_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cos(z, parallel: :never_parallel)
  end

  test "math_complex64_cos_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cos(z, parallel: :never_parallel)
  end

  test "math_complex64_cos_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cos(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cos_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cos(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cos_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cos(z)
  end

  test "math_complex64_cos_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cos(z, parallel: :never_parallel)
  end

  test "math_complex64_cos_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cos(z, parallel: :never_parallel)
  end

  test "math_complex64_cos_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cos(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cos_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cos(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cos_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cos(z)
  end

  test "math_complex64_tan_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tan(z, parallel: :never_parallel)
  end

  test "math_complex64_tan_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tan(z, parallel: :never_parallel)
  end

  test "math_complex64_tan_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tan(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_tan_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tan(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_tan_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tan(z)
  end

  test "math_complex64_tan_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tan(z, parallel: :never_parallel)
  end

  test "math_complex64_tan_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tan(z, parallel: :never_parallel)
  end

  test "math_complex64_tan_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tan(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_tan_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tan(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_tan_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tan(z)
  end

  test "math_complex64_tan_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tan(z, parallel: :never_parallel)
  end

  test "math_complex64_tan_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tan(z, parallel: :never_parallel)
  end

  test "math_complex64_tan_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tan(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_tan_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tan(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_tan_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tan(z)
  end

  test "math_complex64_tan_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tan(z, parallel: :never_parallel)
  end

  test "math_complex64_tan_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tan(z, parallel: :never_parallel)
  end

  test "math_complex64_tan_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tan(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_tan_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tan(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_tan_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tan(z)
  end

  test "math_complex64_tan_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tan(z, parallel: :never_parallel)
  end

  test "math_complex64_tan_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tan(z, parallel: :never_parallel)
  end

  test "math_complex64_tan_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tan(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_tan_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tan(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_tan_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tan(z)
  end

  test "math_complex64_tan_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tan(z, parallel: :never_parallel)
  end

  test "math_complex64_tan_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tan(z, parallel: :never_parallel)
  end

  test "math_complex64_tan_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tan(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_tan_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tan(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_tan_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tan(z)
  end

  test "math_complex64_asin_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asin(z, parallel: :never_parallel)
  end

  test "math_complex64_asin_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asin(z, parallel: :never_parallel)
  end

  test "math_complex64_asin_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asin(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_asin_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asin(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_asin_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asin(z)
  end

  test "math_complex64_asin_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asin(z, parallel: :never_parallel)
  end

  test "math_complex64_asin_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asin(z, parallel: :never_parallel)
  end

  test "math_complex64_asin_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asin(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_asin_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asin(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_asin_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asin(z)
  end

  test "math_complex64_asin_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asin(z, parallel: :never_parallel)
  end

  test "math_complex64_asin_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asin(z, parallel: :never_parallel)
  end

  test "math_complex64_asin_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asin(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_asin_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asin(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_asin_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asin(z)
  end

  test "math_complex64_asin_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asin(z, parallel: :never_parallel)
  end

  test "math_complex64_asin_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asin(z, parallel: :never_parallel)
  end

  test "math_complex64_asin_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asin(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_asin_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asin(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_asin_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asin(z)
  end

  test "math_complex64_asin_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asin(z, parallel: :never_parallel)
  end

  test "math_complex64_asin_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asin(z, parallel: :never_parallel)
  end

  test "math_complex64_asin_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asin(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_asin_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asin(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_asin_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asin(z)
  end

  test "math_complex64_asin_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asin(z, parallel: :never_parallel)
  end

  test "math_complex64_asin_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asin(z, parallel: :never_parallel)
  end

  test "math_complex64_asin_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asin(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_asin_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asin(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_asin_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asin(z)
  end

  test "math_complex64_acos_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acos(z, parallel: :never_parallel)
  end

  test "math_complex64_acos_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acos(z, parallel: :never_parallel)
  end

  test "math_complex64_acos_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acos(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_acos_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acos(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_acos_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acos(z)
  end

  test "math_complex64_acos_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acos(z, parallel: :never_parallel)
  end

  test "math_complex64_acos_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acos(z, parallel: :never_parallel)
  end

  test "math_complex64_acos_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acos(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_acos_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acos(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_acos_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acos(z)
  end

  test "math_complex64_acos_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acos(z, parallel: :never_parallel)
  end

  test "math_complex64_acos_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acos(z, parallel: :never_parallel)
  end

  test "math_complex64_acos_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acos(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_acos_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acos(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_acos_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acos(z)
  end

  test "math_complex64_acos_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acos(z, parallel: :never_parallel)
  end

  test "math_complex64_acos_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acos(z, parallel: :never_parallel)
  end

  test "math_complex64_acos_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acos(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_acos_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acos(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_acos_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acos(z)
  end

  test "math_complex64_acos_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acos(z, parallel: :never_parallel)
  end

  test "math_complex64_acos_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acos(z, parallel: :never_parallel)
  end

  test "math_complex64_acos_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acos(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_acos_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acos(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_acos_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acos(z)
  end

  test "math_complex64_acos_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acos(z, parallel: :never_parallel)
  end

  test "math_complex64_acos_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acos(z, parallel: :never_parallel)
  end

  test "math_complex64_acos_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acos(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_acos_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acos(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_acos_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acos(z)
  end

  test "math_complex64_atan_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atan(z, parallel: :never_parallel)
  end

  test "math_complex64_atan_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atan(z, parallel: :never_parallel)
  end

  test "math_complex64_atan_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atan(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_atan_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atan(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_atan_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atan(z)
  end

  test "math_complex64_atan_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atan(z, parallel: :never_parallel)
  end

  test "math_complex64_atan_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atan(z, parallel: :never_parallel)
  end

  test "math_complex64_atan_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atan(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_atan_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atan(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_atan_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atan(z)
  end

  test "math_complex64_atan_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atan(z, parallel: :never_parallel)
  end

  test "math_complex64_atan_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atan(z, parallel: :never_parallel)
  end

  test "math_complex64_atan_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atan(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_atan_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atan(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_atan_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atan(z)
  end

  test "math_complex64_atan_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atan(z, parallel: :never_parallel)
  end

  test "math_complex64_atan_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atan(z, parallel: :never_parallel)
  end

  test "math_complex64_atan_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atan(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_atan_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atan(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_atan_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atan(z)
  end

  test "math_complex64_atan_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atan(z, parallel: :never_parallel)
  end

  test "math_complex64_atan_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atan(z, parallel: :never_parallel)
  end

  test "math_complex64_atan_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atan(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_atan_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atan(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_atan_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atan(z)
  end

  test "math_complex64_atan_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atan(z, parallel: :never_parallel)
  end

  test "math_complex64_atan_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atan(z, parallel: :never_parallel)
  end

  test "math_complex64_atan_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atan(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_atan_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atan(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_atan_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atan(z)
  end

  test "math_complex64_sinh_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sinh(z, parallel: :never_parallel)
  end

  test "math_complex64_sinh_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sinh(z, parallel: :never_parallel)
  end

  test "math_complex64_sinh_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sinh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sinh_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sinh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sinh_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sinh(z)
  end

  test "math_complex64_sinh_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sinh(z, parallel: :never_parallel)
  end

  test "math_complex64_sinh_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sinh(z, parallel: :never_parallel)
  end

  test "math_complex64_sinh_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sinh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sinh_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sinh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sinh_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sinh(z)
  end

  test "math_complex64_sinh_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sinh(z, parallel: :never_parallel)
  end

  test "math_complex64_sinh_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sinh(z, parallel: :never_parallel)
  end

  test "math_complex64_sinh_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sinh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sinh_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sinh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sinh_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sinh(z)
  end

  test "math_complex64_sinh_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sinh(z, parallel: :never_parallel)
  end

  test "math_complex64_sinh_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sinh(z, parallel: :never_parallel)
  end

  test "math_complex64_sinh_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sinh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sinh_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sinh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sinh_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sinh(z)
  end

  test "math_complex64_sinh_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sinh(z, parallel: :never_parallel)
  end

  test "math_complex64_sinh_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sinh(z, parallel: :never_parallel)
  end

  test "math_complex64_sinh_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sinh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sinh_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sinh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sinh_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sinh(z)
  end

  test "math_complex64_sinh_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sinh(z, parallel: :never_parallel)
  end

  test "math_complex64_sinh_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sinh(z, parallel: :never_parallel)
  end

  test "math_complex64_sinh_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sinh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_sinh_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sinh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_sinh_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sinh(z)
  end

  test "math_complex64_cosh_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cosh(z, parallel: :never_parallel)
  end

  test "math_complex64_cosh_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cosh(z, parallel: :never_parallel)
  end

  test "math_complex64_cosh_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cosh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cosh_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cosh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cosh_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cosh(z)
  end

  test "math_complex64_cosh_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cosh(z, parallel: :never_parallel)
  end

  test "math_complex64_cosh_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cosh(z, parallel: :never_parallel)
  end

  test "math_complex64_cosh_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cosh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cosh_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cosh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cosh_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cosh(z)
  end

  test "math_complex64_cosh_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cosh(z, parallel: :never_parallel)
  end

  test "math_complex64_cosh_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cosh(z, parallel: :never_parallel)
  end

  test "math_complex64_cosh_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cosh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cosh_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cosh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cosh_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cosh(z)
  end

  test "math_complex64_cosh_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cosh(z, parallel: :never_parallel)
  end

  test "math_complex64_cosh_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cosh(z, parallel: :never_parallel)
  end

  test "math_complex64_cosh_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cosh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cosh_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cosh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cosh_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cosh(z)
  end

  test "math_complex64_cosh_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cosh(z, parallel: :never_parallel)
  end

  test "math_complex64_cosh_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cosh(z, parallel: :never_parallel)
  end

  test "math_complex64_cosh_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cosh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cosh_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cosh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cosh_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cosh(z)
  end

  test "math_complex64_cosh_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cosh(z, parallel: :never_parallel)
  end

  test "math_complex64_cosh_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cosh(z, parallel: :never_parallel)
  end

  test "math_complex64_cosh_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cosh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_cosh_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cosh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_cosh_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cosh(z)
  end

  test "math_complex64_tanh_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tanh(z, parallel: :never_parallel)
  end

  test "math_complex64_tanh_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tanh(z, parallel: :never_parallel)
  end

  test "math_complex64_tanh_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tanh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_tanh_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tanh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_tanh_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tanh(z)
  end

  test "math_complex64_tanh_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tanh(z, parallel: :never_parallel)
  end

  test "math_complex64_tanh_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tanh(z, parallel: :never_parallel)
  end

  test "math_complex64_tanh_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tanh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_tanh_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tanh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_tanh_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tanh(z)
  end

  test "math_complex64_tanh_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tanh(z, parallel: :never_parallel)
  end

  test "math_complex64_tanh_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tanh(z, parallel: :never_parallel)
  end

  test "math_complex64_tanh_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tanh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_tanh_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tanh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_tanh_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tanh(z)
  end

  test "math_complex64_tanh_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tanh(z, parallel: :never_parallel)
  end

  test "math_complex64_tanh_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tanh(z, parallel: :never_parallel)
  end

  test "math_complex64_tanh_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tanh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_tanh_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tanh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_tanh_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tanh(z)
  end

  test "math_complex64_tanh_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tanh(z, parallel: :never_parallel)
  end

  test "math_complex64_tanh_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tanh(z, parallel: :never_parallel)
  end

  test "math_complex64_tanh_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tanh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_tanh_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tanh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_tanh_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tanh(z)
  end

  test "math_complex64_tanh_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tanh(z, parallel: :never_parallel)
  end

  test "math_complex64_tanh_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tanh(z, parallel: :never_parallel)
  end

  test "math_complex64_tanh_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tanh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_tanh_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tanh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_tanh_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tanh(z)
  end

  test "math_complex64_asinh_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asinh(z, parallel: :never_parallel)
  end

  test "math_complex64_asinh_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asinh(z, parallel: :never_parallel)
  end

  test "math_complex64_asinh_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asinh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_asinh_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asinh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_asinh_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asinh(z)
  end

  test "math_complex64_asinh_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asinh(z, parallel: :never_parallel)
  end

  test "math_complex64_asinh_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asinh(z, parallel: :never_parallel)
  end

  test "math_complex64_asinh_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asinh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_asinh_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asinh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_asinh_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asinh(z)
  end

  test "math_complex64_asinh_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asinh(z, parallel: :never_parallel)
  end

  test "math_complex64_asinh_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asinh(z, parallel: :never_parallel)
  end

  test "math_complex64_asinh_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asinh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_asinh_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asinh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_asinh_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asinh(z)
  end

  test "math_complex64_asinh_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asinh(z, parallel: :never_parallel)
  end

  test "math_complex64_asinh_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asinh(z, parallel: :never_parallel)
  end

  test "math_complex64_asinh_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asinh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_asinh_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asinh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_asinh_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asinh(z)
  end

  test "math_complex64_asinh_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asinh(z, parallel: :never_parallel)
  end

  test "math_complex64_asinh_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asinh(z, parallel: :never_parallel)
  end

  test "math_complex64_asinh_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asinh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_asinh_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asinh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_asinh_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asinh(z)
  end

  test "math_complex64_asinh_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asinh(z, parallel: :never_parallel)
  end

  test "math_complex64_asinh_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asinh(z, parallel: :never_parallel)
  end

  test "math_complex64_asinh_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asinh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_asinh_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asinh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_asinh_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asinh(z)
  end

  test "math_complex64_acosh_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acosh(z, parallel: :never_parallel)
  end

  test "math_complex64_acosh_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acosh(z, parallel: :never_parallel)
  end

  test "math_complex64_acosh_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acosh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_acosh_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acosh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_acosh_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acosh(z)
  end

  test "math_complex64_acosh_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acosh(z, parallel: :never_parallel)
  end

  test "math_complex64_acosh_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acosh(z, parallel: :never_parallel)
  end

  test "math_complex64_acosh_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acosh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_acosh_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acosh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_acosh_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acosh(z)
  end

  test "math_complex64_acosh_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acosh(z, parallel: :never_parallel)
  end

  test "math_complex64_acosh_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acosh(z, parallel: :never_parallel)
  end

  test "math_complex64_acosh_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acosh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_acosh_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acosh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_acosh_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acosh(z)
  end

  test "math_complex64_acosh_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acosh(z, parallel: :never_parallel)
  end

  test "math_complex64_acosh_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acosh(z, parallel: :never_parallel)
  end

  test "math_complex64_acosh_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acosh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_acosh_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acosh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_acosh_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acosh(z)
  end

  test "math_complex64_acosh_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acosh(z, parallel: :never_parallel)
  end

  test "math_complex64_acosh_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acosh(z, parallel: :never_parallel)
  end

  test "math_complex64_acosh_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acosh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_acosh_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acosh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_acosh_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acosh(z)
  end

  test "math_complex64_acosh_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acosh(z, parallel: :never_parallel)
  end

  test "math_complex64_acosh_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acosh(z, parallel: :never_parallel)
  end

  test "math_complex64_acosh_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acosh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_acosh_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acosh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_acosh_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acosh(z)
  end

  test "math_complex64_atanh_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atanh(z, parallel: :never_parallel)
  end

  test "math_complex64_atanh_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atanh(z, parallel: :never_parallel)
  end

  test "math_complex64_atanh_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atanh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_atanh_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atanh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_atanh_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atanh(z)
  end

  test "math_complex64_atanh_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atanh(z, parallel: :never_parallel)
  end

  test "math_complex64_atanh_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atanh(z, parallel: :never_parallel)
  end

  test "math_complex64_atanh_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atanh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_atanh_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atanh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_atanh_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atanh(z)
  end

  test "math_complex64_atanh_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atanh(z, parallel: :never_parallel)
  end

  test "math_complex64_atanh_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atanh(z, parallel: :never_parallel)
  end

  test "math_complex64_atanh_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atanh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_atanh_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atanh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_atanh_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atanh(z)
  end

  test "math_complex64_atanh_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atanh(z, parallel: :never_parallel)
  end

  test "math_complex64_atanh_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atanh(z, parallel: :never_parallel)
  end

  test "math_complex64_atanh_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atanh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_atanh_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atanh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_atanh_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atanh(z)
  end

  test "math_complex64_atanh_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atanh(z, parallel: :never_parallel)
  end

  test "math_complex64_atanh_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atanh(z, parallel: :never_parallel)
  end

  test "math_complex64_atanh_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atanh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_atanh_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atanh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_atanh_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atanh(z)
  end

  test "math_complex64_atanh_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atanh(z, parallel: :never_parallel)
  end

  test "math_complex64_atanh_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atanh(z, parallel: :never_parallel)
  end

  test "math_complex64_atanh_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atanh(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_atanh_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atanh(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_atanh_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atanh(z)
  end

  test "math_complex64_finv_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.finv(z, parallel: :never_parallel)
  end

  test "math_complex64_finv_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.finv(z, parallel: :never_parallel)
  end

  test "math_complex64_finv_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.finv(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_finv_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.finv(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_finv_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.finv(z)
  end

  test "math_complex64_finv_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.finv(z, parallel: :never_parallel)
  end

  test "math_complex64_finv_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.finv(z, parallel: :never_parallel)
  end

  test "math_complex64_finv_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.finv(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_finv_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.finv(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_finv_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.finv(z)
  end

  test "math_complex64_finv_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.finv(z, parallel: :never_parallel)
  end

  test "math_complex64_finv_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.finv(z, parallel: :never_parallel)
  end

  test "math_complex64_finv_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.finv(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_finv_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.finv(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_finv_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.finv(z)
  end

  test "math_complex64_finv_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.finv(z, parallel: :never_parallel)
  end

  test "math_complex64_finv_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.finv(z, parallel: :never_parallel)
  end

  test "math_complex64_finv_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.finv(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_finv_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.finv(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_finv_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.finv(z)
  end

  test "math_complex64_finv_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.finv(z, parallel: :never_parallel)
  end

  test "math_complex64_finv_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.finv(z, parallel: :never_parallel)
  end

  test "math_complex64_finv_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.finv(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_finv_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.finv(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_finv_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.finv(z)
  end

  test "math_complex64_finv_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.finv(z, parallel: :never_parallel)
  end

  test "math_complex64_finv_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.finv(z, parallel: :never_parallel)
  end

  test "math_complex64_finv_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.finv(z, parallel: {:size_cutoff, 2000})
  end

  test "math_complex64_finv_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.finv(z, parallel: {:size_cutoff, 100})
  end

  test "math_complex64_finv_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.finv(z)
  end
end
