defmodule SciExTest.Float32.MathFunctionsTest do
  use ExUnit.Case
  use ExUnitProperties

  doctest SciEx

  alias SciEx.Float64.{Array1, Array2, Array3, Array4, Array5, Array6}

  test "math_float32_floor_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.floor(x, parallel: :never_parallel)
  end

  test "math_float32_floor_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.floor(x, parallel: :never_parallel)
  end

  test "math_float32_floor_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.floor(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_floor_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.floor(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_floor_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.floor(x)
  end

  test "math_float32_floor_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.floor(x, parallel: :never_parallel)
  end

  test "math_float32_floor_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.floor(x, parallel: :never_parallel)
  end

  test "math_float32_floor_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.floor(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_floor_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.floor(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_floor_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.floor(x)
  end

  test "math_float32_floor_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.floor(x, parallel: :never_parallel)
  end

  test "math_float32_floor_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.floor(x, parallel: :never_parallel)
  end

  test "math_float32_floor_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.floor(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_floor_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.floor(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_floor_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.floor(x)
  end

  test "math_float32_floor_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.floor(x, parallel: :never_parallel)
  end

  test "math_float32_floor_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.floor(x, parallel: :never_parallel)
  end

  test "math_float32_floor_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.floor(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_floor_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.floor(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_floor_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.floor(x)
  end

  test "math_float32_floor_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.floor(x, parallel: :never_parallel)
  end

  test "math_float32_floor_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.floor(x, parallel: :never_parallel)
  end

  test "math_float32_floor_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.floor(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_floor_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.floor(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_floor_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.floor(x)
  end

  test "math_float32_floor_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.floor(x, parallel: :never_parallel)
  end

  test "math_float32_floor_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.floor(x, parallel: :never_parallel)
  end

  test "math_float32_floor_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.floor(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_floor_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.floor(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_floor_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.floor(x)
  end

  test "math_float32_ceil_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ceil(x, parallel: :never_parallel)
  end

  test "math_float32_ceil_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ceil(x, parallel: :never_parallel)
  end

  test "math_float32_ceil_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ceil(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ceil_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ceil(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ceil_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ceil(x)
  end

  test "math_float32_ceil_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ceil(x, parallel: :never_parallel)
  end

  test "math_float32_ceil_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ceil(x, parallel: :never_parallel)
  end

  test "math_float32_ceil_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ceil(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ceil_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ceil(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ceil_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ceil(x)
  end

  test "math_float32_ceil_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ceil(x, parallel: :never_parallel)
  end

  test "math_float32_ceil_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ceil(x, parallel: :never_parallel)
  end

  test "math_float32_ceil_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ceil(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ceil_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ceil(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ceil_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ceil(x)
  end

  test "math_float32_ceil_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ceil(x, parallel: :never_parallel)
  end

  test "math_float32_ceil_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ceil(x, parallel: :never_parallel)
  end

  test "math_float32_ceil_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ceil(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ceil_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ceil(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ceil_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ceil(x)
  end

  test "math_float32_ceil_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ceil(x, parallel: :never_parallel)
  end

  test "math_float32_ceil_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ceil(x, parallel: :never_parallel)
  end

  test "math_float32_ceil_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ceil(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ceil_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ceil(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ceil_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ceil(x)
  end

  test "math_float32_ceil_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ceil(x, parallel: :never_parallel)
  end

  test "math_float32_ceil_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ceil(x, parallel: :never_parallel)
  end

  test "math_float32_ceil_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ceil(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ceil_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ceil(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ceil_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ceil(x)
  end

  test "math_float32_round_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.round(x, parallel: :never_parallel)
  end

  test "math_float32_round_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.round(x, parallel: :never_parallel)
  end

  test "math_float32_round_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.round(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_round_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.round(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_round_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.round(x)
  end

  test "math_float32_round_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.round(x, parallel: :never_parallel)
  end

  test "math_float32_round_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.round(x, parallel: :never_parallel)
  end

  test "math_float32_round_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.round(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_round_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.round(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_round_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.round(x)
  end

  test "math_float32_round_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.round(x, parallel: :never_parallel)
  end

  test "math_float32_round_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.round(x, parallel: :never_parallel)
  end

  test "math_float32_round_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.round(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_round_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.round(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_round_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.round(x)
  end

  test "math_float32_round_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.round(x, parallel: :never_parallel)
  end

  test "math_float32_round_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.round(x, parallel: :never_parallel)
  end

  test "math_float32_round_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.round(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_round_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.round(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_round_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.round(x)
  end

  test "math_float32_round_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.round(x, parallel: :never_parallel)
  end

  test "math_float32_round_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.round(x, parallel: :never_parallel)
  end

  test "math_float32_round_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.round(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_round_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.round(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_round_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.round(x)
  end

  test "math_float32_round_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.round(x, parallel: :never_parallel)
  end

  test "math_float32_round_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.round(x, parallel: :never_parallel)
  end

  test "math_float32_round_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.round(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_round_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.round(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_round_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.round(x)
  end

  test "math_float32_round_ties_even_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.round_ties_even(x, parallel: :never_parallel)
  end

  test "math_float32_round_ties_even_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.round_ties_even(x, parallel: :never_parallel)
  end

  test "math_float32_round_ties_even_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.round_ties_even(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_round_ties_even_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.round_ties_even(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_round_ties_even_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.round_ties_even(x)
  end

  test "math_float32_round_ties_even_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.round_ties_even(x, parallel: :never_parallel)
  end

  test "math_float32_round_ties_even_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.round_ties_even(x, parallel: :never_parallel)
  end

  test "math_float32_round_ties_even_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.round_ties_even(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_round_ties_even_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.round_ties_even(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_round_ties_even_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.round_ties_even(x)
  end

  test "math_float32_round_ties_even_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.round_ties_even(x, parallel: :never_parallel)
  end

  test "math_float32_round_ties_even_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.round_ties_even(x, parallel: :never_parallel)
  end

  test "math_float32_round_ties_even_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.round_ties_even(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_round_ties_even_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.round_ties_even(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_round_ties_even_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.round_ties_even(x)
  end

  test "math_float32_round_ties_even_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.round_ties_even(x, parallel: :never_parallel)
  end

  test "math_float32_round_ties_even_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.round_ties_even(x, parallel: :never_parallel)
  end

  test "math_float32_round_ties_even_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.round_ties_even(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_round_ties_even_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.round_ties_even(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_round_ties_even_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.round_ties_even(x)
  end

  test "math_float32_round_ties_even_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.round_ties_even(x, parallel: :never_parallel)
  end

  test "math_float32_round_ties_even_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.round_ties_even(x, parallel: :never_parallel)
  end

  test "math_float32_round_ties_even_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.round_ties_even(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_round_ties_even_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.round_ties_even(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_round_ties_even_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.round_ties_even(x)
  end

  test "math_float32_round_ties_even_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.round_ties_even(x, parallel: :never_parallel)
  end

  test "math_float32_round_ties_even_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.round_ties_even(x, parallel: :never_parallel)
  end

  test "math_float32_round_ties_even_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.round_ties_even(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_round_ties_even_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.round_ties_even(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_round_ties_even_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.round_ties_even(x)
  end

  test "math_float32_trunc_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.trunc(x, parallel: :never_parallel)
  end

  test "math_float32_trunc_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.trunc(x, parallel: :never_parallel)
  end

  test "math_float32_trunc_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.trunc(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_trunc_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.trunc(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_trunc_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.trunc(x)
  end

  test "math_float32_trunc_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.trunc(x, parallel: :never_parallel)
  end

  test "math_float32_trunc_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.trunc(x, parallel: :never_parallel)
  end

  test "math_float32_trunc_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.trunc(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_trunc_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.trunc(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_trunc_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.trunc(x)
  end

  test "math_float32_trunc_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.trunc(x, parallel: :never_parallel)
  end

  test "math_float32_trunc_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.trunc(x, parallel: :never_parallel)
  end

  test "math_float32_trunc_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.trunc(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_trunc_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.trunc(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_trunc_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.trunc(x)
  end

  test "math_float32_trunc_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.trunc(x, parallel: :never_parallel)
  end

  test "math_float32_trunc_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.trunc(x, parallel: :never_parallel)
  end

  test "math_float32_trunc_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.trunc(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_trunc_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.trunc(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_trunc_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.trunc(x)
  end

  test "math_float32_trunc_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.trunc(x, parallel: :never_parallel)
  end

  test "math_float32_trunc_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.trunc(x, parallel: :never_parallel)
  end

  test "math_float32_trunc_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.trunc(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_trunc_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.trunc(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_trunc_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.trunc(x)
  end

  test "math_float32_trunc_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.trunc(x, parallel: :never_parallel)
  end

  test "math_float32_trunc_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.trunc(x, parallel: :never_parallel)
  end

  test "math_float32_trunc_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.trunc(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_trunc_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.trunc(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_trunc_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.trunc(x)
  end

  test "math_float32_fract_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.fract(x, parallel: :never_parallel)
  end

  test "math_float32_fract_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.fract(x, parallel: :never_parallel)
  end

  test "math_float32_fract_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.fract(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_fract_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.fract(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_fract_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.fract(x)
  end

  test "math_float32_fract_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.fract(x, parallel: :never_parallel)
  end

  test "math_float32_fract_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.fract(x, parallel: :never_parallel)
  end

  test "math_float32_fract_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.fract(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_fract_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.fract(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_fract_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.fract(x)
  end

  test "math_float32_fract_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.fract(x, parallel: :never_parallel)
  end

  test "math_float32_fract_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.fract(x, parallel: :never_parallel)
  end

  test "math_float32_fract_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.fract(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_fract_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.fract(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_fract_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.fract(x)
  end

  test "math_float32_fract_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.fract(x, parallel: :never_parallel)
  end

  test "math_float32_fract_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.fract(x, parallel: :never_parallel)
  end

  test "math_float32_fract_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.fract(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_fract_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.fract(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_fract_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.fract(x)
  end

  test "math_float32_fract_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.fract(x, parallel: :never_parallel)
  end

  test "math_float32_fract_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.fract(x, parallel: :never_parallel)
  end

  test "math_float32_fract_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.fract(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_fract_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.fract(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_fract_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.fract(x)
  end

  test "math_float32_fract_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.fract(x, parallel: :never_parallel)
  end

  test "math_float32_fract_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.fract(x, parallel: :never_parallel)
  end

  test "math_float32_fract_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.fract(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_fract_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.fract(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_fract_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.fract(x)
  end

  test "math_float32_sqrt_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sqrt(x, parallel: :never_parallel)
  end

  test "math_float32_sqrt_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sqrt(x, parallel: :never_parallel)
  end

  test "math_float32_sqrt_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sqrt(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sqrt_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sqrt(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sqrt_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sqrt(x)
  end

  test "math_float32_sqrt_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sqrt(x, parallel: :never_parallel)
  end

  test "math_float32_sqrt_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sqrt(x, parallel: :never_parallel)
  end

  test "math_float32_sqrt_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sqrt(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sqrt_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sqrt(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sqrt_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sqrt(x)
  end

  test "math_float32_sqrt_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sqrt(x, parallel: :never_parallel)
  end

  test "math_float32_sqrt_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sqrt(x, parallel: :never_parallel)
  end

  test "math_float32_sqrt_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sqrt(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sqrt_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sqrt(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sqrt_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sqrt(x)
  end

  test "math_float32_sqrt_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sqrt(x, parallel: :never_parallel)
  end

  test "math_float32_sqrt_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sqrt(x, parallel: :never_parallel)
  end

  test "math_float32_sqrt_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sqrt(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sqrt_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sqrt(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sqrt_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sqrt(x)
  end

  test "math_float32_sqrt_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sqrt(x, parallel: :never_parallel)
  end

  test "math_float32_sqrt_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sqrt(x, parallel: :never_parallel)
  end

  test "math_float32_sqrt_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sqrt(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sqrt_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sqrt(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sqrt_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sqrt(x)
  end

  test "math_float32_sqrt_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sqrt(x, parallel: :never_parallel)
  end

  test "math_float32_sqrt_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sqrt(x, parallel: :never_parallel)
  end

  test "math_float32_sqrt_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sqrt(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sqrt_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sqrt(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sqrt_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sqrt(x)
  end

  test "math_float32_exp_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp(x, parallel: :never_parallel)
  end

  test "math_float32_exp_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp(x, parallel: :never_parallel)
  end

  test "math_float32_exp_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp(x)
  end

  test "math_float32_exp_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp(x, parallel: :never_parallel)
  end

  test "math_float32_exp_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp(x, parallel: :never_parallel)
  end

  test "math_float32_exp_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp(x)
  end

  test "math_float32_exp_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp(x, parallel: :never_parallel)
  end

  test "math_float32_exp_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp(x, parallel: :never_parallel)
  end

  test "math_float32_exp_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp(x)
  end

  test "math_float32_exp_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp(x, parallel: :never_parallel)
  end

  test "math_float32_exp_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp(x, parallel: :never_parallel)
  end

  test "math_float32_exp_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp(x)
  end

  test "math_float32_exp_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp(x, parallel: :never_parallel)
  end

  test "math_float32_exp_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp(x, parallel: :never_parallel)
  end

  test "math_float32_exp_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp(x)
  end

  test "math_float32_exp_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp(x, parallel: :never_parallel)
  end

  test "math_float32_exp_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp(x, parallel: :never_parallel)
  end

  test "math_float32_exp_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp(x)
  end

  test "math_float32_exp2_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp2(x, parallel: :never_parallel)
  end

  test "math_float32_exp2_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp2(x, parallel: :never_parallel)
  end

  test "math_float32_exp2_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp2(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp2_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp2(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp2_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp2(x)
  end

  test "math_float32_exp2_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp2(x, parallel: :never_parallel)
  end

  test "math_float32_exp2_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp2(x, parallel: :never_parallel)
  end

  test "math_float32_exp2_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp2(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp2_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp2(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp2_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp2(x)
  end

  test "math_float32_exp2_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp2(x, parallel: :never_parallel)
  end

  test "math_float32_exp2_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp2(x, parallel: :never_parallel)
  end

  test "math_float32_exp2_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp2(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp2_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp2(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp2_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp2(x)
  end

  test "math_float32_exp2_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp2(x, parallel: :never_parallel)
  end

  test "math_float32_exp2_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp2(x, parallel: :never_parallel)
  end

  test "math_float32_exp2_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp2(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp2_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp2(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp2_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp2(x)
  end

  test "math_float32_exp2_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp2(x, parallel: :never_parallel)
  end

  test "math_float32_exp2_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp2(x, parallel: :never_parallel)
  end

  test "math_float32_exp2_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp2(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp2_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp2(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp2_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp2(x)
  end

  test "math_float32_exp2_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp2(x, parallel: :never_parallel)
  end

  test "math_float32_exp2_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp2(x, parallel: :never_parallel)
  end

  test "math_float32_exp2_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp2(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp2_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp2(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp2_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp2(x)
  end

  test "math_float32_ln_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln(x, parallel: :never_parallel)
  end

  test "math_float32_ln_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln(x, parallel: :never_parallel)
  end

  test "math_float32_ln_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ln_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ln_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln(x)
  end

  test "math_float32_ln_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln(x, parallel: :never_parallel)
  end

  test "math_float32_ln_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln(x, parallel: :never_parallel)
  end

  test "math_float32_ln_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ln_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ln_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln(x)
  end

  test "math_float32_ln_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln(x, parallel: :never_parallel)
  end

  test "math_float32_ln_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln(x, parallel: :never_parallel)
  end

  test "math_float32_ln_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ln_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ln_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln(x)
  end

  test "math_float32_ln_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln(x, parallel: :never_parallel)
  end

  test "math_float32_ln_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln(x, parallel: :never_parallel)
  end

  test "math_float32_ln_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ln_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ln_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln(x)
  end

  test "math_float32_ln_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln(x, parallel: :never_parallel)
  end

  test "math_float32_ln_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln(x, parallel: :never_parallel)
  end

  test "math_float32_ln_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ln_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ln_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln(x)
  end

  test "math_float32_ln_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln(x, parallel: :never_parallel)
  end

  test "math_float32_ln_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln(x, parallel: :never_parallel)
  end

  test "math_float32_ln_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ln_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ln_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln(x)
  end

  test "math_float32_log2_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.log2(x, parallel: :never_parallel)
  end

  test "math_float32_log2_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.log2(x, parallel: :never_parallel)
  end

  test "math_float32_log2_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.log2(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_log2_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.log2(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_log2_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.log2(x)
  end

  test "math_float32_log2_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.log2(x, parallel: :never_parallel)
  end

  test "math_float32_log2_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.log2(x, parallel: :never_parallel)
  end

  test "math_float32_log2_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.log2(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_log2_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.log2(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_log2_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.log2(x)
  end

  test "math_float32_log2_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.log2(x, parallel: :never_parallel)
  end

  test "math_float32_log2_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.log2(x, parallel: :never_parallel)
  end

  test "math_float32_log2_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.log2(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_log2_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.log2(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_log2_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.log2(x)
  end

  test "math_float32_log2_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.log2(x, parallel: :never_parallel)
  end

  test "math_float32_log2_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.log2(x, parallel: :never_parallel)
  end

  test "math_float32_log2_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.log2(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_log2_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.log2(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_log2_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.log2(x)
  end

  test "math_float32_log2_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.log2(x, parallel: :never_parallel)
  end

  test "math_float32_log2_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.log2(x, parallel: :never_parallel)
  end

  test "math_float32_log2_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.log2(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_log2_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.log2(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_log2_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.log2(x)
  end

  test "math_float32_log2_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.log2(x, parallel: :never_parallel)
  end

  test "math_float32_log2_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.log2(x, parallel: :never_parallel)
  end

  test "math_float32_log2_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.log2(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_log2_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.log2(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_log2_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.log2(x)
  end

  test "math_float32_log10_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.log10(x, parallel: :never_parallel)
  end

  test "math_float32_log10_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.log10(x, parallel: :never_parallel)
  end

  test "math_float32_log10_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.log10(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_log10_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.log10(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_log10_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.log10(x)
  end

  test "math_float32_log10_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.log10(x, parallel: :never_parallel)
  end

  test "math_float32_log10_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.log10(x, parallel: :never_parallel)
  end

  test "math_float32_log10_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.log10(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_log10_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.log10(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_log10_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.log10(x)
  end

  test "math_float32_log10_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.log10(x, parallel: :never_parallel)
  end

  test "math_float32_log10_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.log10(x, parallel: :never_parallel)
  end

  test "math_float32_log10_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.log10(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_log10_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.log10(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_log10_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.log10(x)
  end

  test "math_float32_log10_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.log10(x, parallel: :never_parallel)
  end

  test "math_float32_log10_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.log10(x, parallel: :never_parallel)
  end

  test "math_float32_log10_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.log10(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_log10_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.log10(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_log10_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.log10(x)
  end

  test "math_float32_log10_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.log10(x, parallel: :never_parallel)
  end

  test "math_float32_log10_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.log10(x, parallel: :never_parallel)
  end

  test "math_float32_log10_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.log10(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_log10_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.log10(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_log10_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.log10(x)
  end

  test "math_float32_log10_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.log10(x, parallel: :never_parallel)
  end

  test "math_float32_log10_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.log10(x, parallel: :never_parallel)
  end

  test "math_float32_log10_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.log10(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_log10_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.log10(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_log10_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.log10(x)
  end

  test "math_float32_sin_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sin(x, parallel: :never_parallel)
  end

  test "math_float32_sin_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sin(x, parallel: :never_parallel)
  end

  test "math_float32_sin_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sin(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sin_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sin(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sin_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sin(x)
  end

  test "math_float32_sin_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sin(x, parallel: :never_parallel)
  end

  test "math_float32_sin_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sin(x, parallel: :never_parallel)
  end

  test "math_float32_sin_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sin(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sin_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sin(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sin_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sin(x)
  end

  test "math_float32_sin_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sin(x, parallel: :never_parallel)
  end

  test "math_float32_sin_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sin(x, parallel: :never_parallel)
  end

  test "math_float32_sin_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sin(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sin_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sin(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sin_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sin(x)
  end

  test "math_float32_sin_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sin(x, parallel: :never_parallel)
  end

  test "math_float32_sin_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sin(x, parallel: :never_parallel)
  end

  test "math_float32_sin_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sin(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sin_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sin(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sin_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sin(x)
  end

  test "math_float32_sin_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sin(x, parallel: :never_parallel)
  end

  test "math_float32_sin_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sin(x, parallel: :never_parallel)
  end

  test "math_float32_sin_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sin(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sin_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sin(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sin_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sin(x)
  end

  test "math_float32_sin_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sin(x, parallel: :never_parallel)
  end

  test "math_float32_sin_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sin(x, parallel: :never_parallel)
  end

  test "math_float32_sin_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sin(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sin_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sin(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sin_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sin(x)
  end

  test "math_float32_cos_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cos(x, parallel: :never_parallel)
  end

  test "math_float32_cos_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cos(x, parallel: :never_parallel)
  end

  test "math_float32_cos_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cos(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cos_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cos(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cos_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cos(x)
  end

  test "math_float32_cos_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cos(x, parallel: :never_parallel)
  end

  test "math_float32_cos_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cos(x, parallel: :never_parallel)
  end

  test "math_float32_cos_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cos(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cos_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cos(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cos_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cos(x)
  end

  test "math_float32_cos_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cos(x, parallel: :never_parallel)
  end

  test "math_float32_cos_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cos(x, parallel: :never_parallel)
  end

  test "math_float32_cos_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cos(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cos_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cos(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cos_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cos(x)
  end

  test "math_float32_cos_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cos(x, parallel: :never_parallel)
  end

  test "math_float32_cos_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cos(x, parallel: :never_parallel)
  end

  test "math_float32_cos_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cos(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cos_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cos(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cos_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cos(x)
  end

  test "math_float32_cos_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cos(x, parallel: :never_parallel)
  end

  test "math_float32_cos_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cos(x, parallel: :never_parallel)
  end

  test "math_float32_cos_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cos(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cos_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cos(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cos_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cos(x)
  end

  test "math_float32_cos_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cos(x, parallel: :never_parallel)
  end

  test "math_float32_cos_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cos(x, parallel: :never_parallel)
  end

  test "math_float32_cos_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cos(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cos_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cos(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cos_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cos(x)
  end

  test "math_float32_tan_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tan(x, parallel: :never_parallel)
  end

  test "math_float32_tan_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tan(x, parallel: :never_parallel)
  end

  test "math_float32_tan_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tan(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_tan_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tan(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_tan_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tan(x)
  end

  test "math_float32_tan_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tan(x, parallel: :never_parallel)
  end

  test "math_float32_tan_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tan(x, parallel: :never_parallel)
  end

  test "math_float32_tan_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tan(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_tan_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tan(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_tan_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tan(x)
  end

  test "math_float32_tan_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tan(x, parallel: :never_parallel)
  end

  test "math_float32_tan_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tan(x, parallel: :never_parallel)
  end

  test "math_float32_tan_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tan(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_tan_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tan(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_tan_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tan(x)
  end

  test "math_float32_tan_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tan(x, parallel: :never_parallel)
  end

  test "math_float32_tan_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tan(x, parallel: :never_parallel)
  end

  test "math_float32_tan_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tan(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_tan_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tan(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_tan_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tan(x)
  end

  test "math_float32_tan_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tan(x, parallel: :never_parallel)
  end

  test "math_float32_tan_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tan(x, parallel: :never_parallel)
  end

  test "math_float32_tan_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tan(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_tan_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tan(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_tan_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tan(x)
  end

  test "math_float32_tan_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tan(x, parallel: :never_parallel)
  end

  test "math_float32_tan_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tan(x, parallel: :never_parallel)
  end

  test "math_float32_tan_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tan(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_tan_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tan(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_tan_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tan(x)
  end

  test "math_float32_asin_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asin(x, parallel: :never_parallel)
  end

  test "math_float32_asin_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asin(x, parallel: :never_parallel)
  end

  test "math_float32_asin_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asin(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_asin_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asin(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_asin_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asin(x)
  end

  test "math_float32_asin_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asin(x, parallel: :never_parallel)
  end

  test "math_float32_asin_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asin(x, parallel: :never_parallel)
  end

  test "math_float32_asin_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asin(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_asin_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asin(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_asin_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asin(x)
  end

  test "math_float32_asin_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asin(x, parallel: :never_parallel)
  end

  test "math_float32_asin_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asin(x, parallel: :never_parallel)
  end

  test "math_float32_asin_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asin(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_asin_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asin(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_asin_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asin(x)
  end

  test "math_float32_asin_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asin(x, parallel: :never_parallel)
  end

  test "math_float32_asin_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asin(x, parallel: :never_parallel)
  end

  test "math_float32_asin_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asin(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_asin_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asin(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_asin_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asin(x)
  end

  test "math_float32_asin_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asin(x, parallel: :never_parallel)
  end

  test "math_float32_asin_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asin(x, parallel: :never_parallel)
  end

  test "math_float32_asin_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asin(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_asin_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asin(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_asin_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asin(x)
  end

  test "math_float32_asin_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asin(x, parallel: :never_parallel)
  end

  test "math_float32_asin_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asin(x, parallel: :never_parallel)
  end

  test "math_float32_asin_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asin(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_asin_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asin(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_asin_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asin(x)
  end

  test "math_float32_acos_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acos(x, parallel: :never_parallel)
  end

  test "math_float32_acos_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acos(x, parallel: :never_parallel)
  end

  test "math_float32_acos_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acos(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_acos_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acos(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_acos_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acos(x)
  end

  test "math_float32_acos_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acos(x, parallel: :never_parallel)
  end

  test "math_float32_acos_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acos(x, parallel: :never_parallel)
  end

  test "math_float32_acos_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acos(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_acos_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acos(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_acos_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acos(x)
  end

  test "math_float32_acos_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acos(x, parallel: :never_parallel)
  end

  test "math_float32_acos_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acos(x, parallel: :never_parallel)
  end

  test "math_float32_acos_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acos(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_acos_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acos(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_acos_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acos(x)
  end

  test "math_float32_acos_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acos(x, parallel: :never_parallel)
  end

  test "math_float32_acos_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acos(x, parallel: :never_parallel)
  end

  test "math_float32_acos_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acos(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_acos_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acos(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_acos_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acos(x)
  end

  test "math_float32_acos_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acos(x, parallel: :never_parallel)
  end

  test "math_float32_acos_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acos(x, parallel: :never_parallel)
  end

  test "math_float32_acos_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acos(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_acos_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acos(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_acos_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acos(x)
  end

  test "math_float32_acos_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acos(x, parallel: :never_parallel)
  end

  test "math_float32_acos_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acos(x, parallel: :never_parallel)
  end

  test "math_float32_acos_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acos(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_acos_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acos(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_acos_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acos(x)
  end

  test "math_float32_atan_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atan(x, parallel: :never_parallel)
  end

  test "math_float32_atan_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atan(x, parallel: :never_parallel)
  end

  test "math_float32_atan_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atan(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_atan_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atan(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_atan_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atan(x)
  end

  test "math_float32_atan_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atan(x, parallel: :never_parallel)
  end

  test "math_float32_atan_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atan(x, parallel: :never_parallel)
  end

  test "math_float32_atan_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atan(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_atan_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atan(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_atan_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atan(x)
  end

  test "math_float32_atan_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atan(x, parallel: :never_parallel)
  end

  test "math_float32_atan_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atan(x, parallel: :never_parallel)
  end

  test "math_float32_atan_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atan(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_atan_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atan(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_atan_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atan(x)
  end

  test "math_float32_atan_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atan(x, parallel: :never_parallel)
  end

  test "math_float32_atan_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atan(x, parallel: :never_parallel)
  end

  test "math_float32_atan_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atan(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_atan_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atan(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_atan_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atan(x)
  end

  test "math_float32_atan_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atan(x, parallel: :never_parallel)
  end

  test "math_float32_atan_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atan(x, parallel: :never_parallel)
  end

  test "math_float32_atan_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atan(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_atan_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atan(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_atan_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atan(x)
  end

  test "math_float32_atan_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atan(x, parallel: :never_parallel)
  end

  test "math_float32_atan_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atan(x, parallel: :never_parallel)
  end

  test "math_float32_atan_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atan(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_atan_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atan(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_atan_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atan(x)
  end

  test "math_float32_exp_m1_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp_m1(x, parallel: :never_parallel)
  end

  test "math_float32_exp_m1_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp_m1(x, parallel: :never_parallel)
  end

  test "math_float32_exp_m1_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp_m1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp_m1_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp_m1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp_m1_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.exp_m1(x)
  end

  test "math_float32_exp_m1_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp_m1(x, parallel: :never_parallel)
  end

  test "math_float32_exp_m1_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp_m1(x, parallel: :never_parallel)
  end

  test "math_float32_exp_m1_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp_m1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp_m1_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp_m1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp_m1_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.exp_m1(x)
  end

  test "math_float32_exp_m1_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp_m1(x, parallel: :never_parallel)
  end

  test "math_float32_exp_m1_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp_m1(x, parallel: :never_parallel)
  end

  test "math_float32_exp_m1_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp_m1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp_m1_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp_m1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp_m1_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.exp_m1(x)
  end

  test "math_float32_exp_m1_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp_m1(x, parallel: :never_parallel)
  end

  test "math_float32_exp_m1_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp_m1(x, parallel: :never_parallel)
  end

  test "math_float32_exp_m1_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp_m1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp_m1_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp_m1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp_m1_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.exp_m1(x)
  end

  test "math_float32_exp_m1_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp_m1(x, parallel: :never_parallel)
  end

  test "math_float32_exp_m1_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp_m1(x, parallel: :never_parallel)
  end

  test "math_float32_exp_m1_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp_m1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp_m1_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp_m1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp_m1_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.exp_m1(x)
  end

  test "math_float32_exp_m1_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp_m1(x, parallel: :never_parallel)
  end

  test "math_float32_exp_m1_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp_m1(x, parallel: :never_parallel)
  end

  test "math_float32_exp_m1_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp_m1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_exp_m1_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp_m1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_exp_m1_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.exp_m1(x)
  end

  test "math_float32_ln_1p_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln_1p(x, parallel: :never_parallel)
  end

  test "math_float32_ln_1p_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln_1p(x, parallel: :never_parallel)
  end

  test "math_float32_ln_1p_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln_1p(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ln_1p_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln_1p(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ln_1p_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.ln_1p(x)
  end

  test "math_float32_ln_1p_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln_1p(x, parallel: :never_parallel)
  end

  test "math_float32_ln_1p_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln_1p(x, parallel: :never_parallel)
  end

  test "math_float32_ln_1p_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln_1p(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ln_1p_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln_1p(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ln_1p_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.ln_1p(x)
  end

  test "math_float32_ln_1p_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln_1p(x, parallel: :never_parallel)
  end

  test "math_float32_ln_1p_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln_1p(x, parallel: :never_parallel)
  end

  test "math_float32_ln_1p_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln_1p(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ln_1p_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln_1p(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ln_1p_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.ln_1p(x)
  end

  test "math_float32_ln_1p_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln_1p(x, parallel: :never_parallel)
  end

  test "math_float32_ln_1p_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln_1p(x, parallel: :never_parallel)
  end

  test "math_float32_ln_1p_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln_1p(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ln_1p_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln_1p(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ln_1p_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.ln_1p(x)
  end

  test "math_float32_ln_1p_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln_1p(x, parallel: :never_parallel)
  end

  test "math_float32_ln_1p_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln_1p(x, parallel: :never_parallel)
  end

  test "math_float32_ln_1p_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln_1p(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ln_1p_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln_1p(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ln_1p_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.ln_1p(x)
  end

  test "math_float32_ln_1p_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln_1p(x, parallel: :never_parallel)
  end

  test "math_float32_ln_1p_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln_1p(x, parallel: :never_parallel)
  end

  test "math_float32_ln_1p_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln_1p(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_ln_1p_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln_1p(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_ln_1p_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.ln_1p(x)
  end

  test "math_float32_sinh_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sinh(x, parallel: :never_parallel)
  end

  test "math_float32_sinh_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sinh(x, parallel: :never_parallel)
  end

  test "math_float32_sinh_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sinh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sinh_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sinh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sinh_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.sinh(x)
  end

  test "math_float32_sinh_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sinh(x, parallel: :never_parallel)
  end

  test "math_float32_sinh_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sinh(x, parallel: :never_parallel)
  end

  test "math_float32_sinh_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sinh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sinh_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sinh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sinh_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.sinh(x)
  end

  test "math_float32_sinh_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sinh(x, parallel: :never_parallel)
  end

  test "math_float32_sinh_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sinh(x, parallel: :never_parallel)
  end

  test "math_float32_sinh_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sinh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sinh_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sinh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sinh_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.sinh(x)
  end

  test "math_float32_sinh_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sinh(x, parallel: :never_parallel)
  end

  test "math_float32_sinh_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sinh(x, parallel: :never_parallel)
  end

  test "math_float32_sinh_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sinh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sinh_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sinh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sinh_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.sinh(x)
  end

  test "math_float32_sinh_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sinh(x, parallel: :never_parallel)
  end

  test "math_float32_sinh_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sinh(x, parallel: :never_parallel)
  end

  test "math_float32_sinh_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sinh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sinh_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sinh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sinh_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.sinh(x)
  end

  test "math_float32_sinh_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sinh(x, parallel: :never_parallel)
  end

  test "math_float32_sinh_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sinh(x, parallel: :never_parallel)
  end

  test "math_float32_sinh_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sinh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_sinh_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sinh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_sinh_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.sinh(x)
  end

  test "math_float32_cosh_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cosh(x, parallel: :never_parallel)
  end

  test "math_float32_cosh_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cosh(x, parallel: :never_parallel)
  end

  test "math_float32_cosh_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cosh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cosh_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cosh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cosh_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cosh(x)
  end

  test "math_float32_cosh_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cosh(x, parallel: :never_parallel)
  end

  test "math_float32_cosh_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cosh(x, parallel: :never_parallel)
  end

  test "math_float32_cosh_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cosh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cosh_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cosh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cosh_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cosh(x)
  end

  test "math_float32_cosh_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cosh(x, parallel: :never_parallel)
  end

  test "math_float32_cosh_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cosh(x, parallel: :never_parallel)
  end

  test "math_float32_cosh_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cosh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cosh_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cosh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cosh_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cosh(x)
  end

  test "math_float32_cosh_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cosh(x, parallel: :never_parallel)
  end

  test "math_float32_cosh_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cosh(x, parallel: :never_parallel)
  end

  test "math_float32_cosh_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cosh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cosh_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cosh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cosh_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cosh(x)
  end

  test "math_float32_cosh_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cosh(x, parallel: :never_parallel)
  end

  test "math_float32_cosh_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cosh(x, parallel: :never_parallel)
  end

  test "math_float32_cosh_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cosh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cosh_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cosh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cosh_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cosh(x)
  end

  test "math_float32_cosh_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cosh(x, parallel: :never_parallel)
  end

  test "math_float32_cosh_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cosh(x, parallel: :never_parallel)
  end

  test "math_float32_cosh_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cosh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cosh_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cosh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cosh_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cosh(x)
  end

  test "math_float32_tanh_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tanh(x, parallel: :never_parallel)
  end

  test "math_float32_tanh_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tanh(x, parallel: :never_parallel)
  end

  test "math_float32_tanh_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tanh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_tanh_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tanh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_tanh_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.tanh(x)
  end

  test "math_float32_tanh_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tanh(x, parallel: :never_parallel)
  end

  test "math_float32_tanh_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tanh(x, parallel: :never_parallel)
  end

  test "math_float32_tanh_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tanh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_tanh_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tanh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_tanh_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.tanh(x)
  end

  test "math_float32_tanh_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tanh(x, parallel: :never_parallel)
  end

  test "math_float32_tanh_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tanh(x, parallel: :never_parallel)
  end

  test "math_float32_tanh_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tanh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_tanh_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tanh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_tanh_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.tanh(x)
  end

  test "math_float32_tanh_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tanh(x, parallel: :never_parallel)
  end

  test "math_float32_tanh_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tanh(x, parallel: :never_parallel)
  end

  test "math_float32_tanh_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tanh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_tanh_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tanh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_tanh_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.tanh(x)
  end

  test "math_float32_tanh_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tanh(x, parallel: :never_parallel)
  end

  test "math_float32_tanh_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tanh(x, parallel: :never_parallel)
  end

  test "math_float32_tanh_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tanh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_tanh_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tanh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_tanh_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.tanh(x)
  end

  test "math_float32_tanh_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tanh(x, parallel: :never_parallel)
  end

  test "math_float32_tanh_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tanh(x, parallel: :never_parallel)
  end

  test "math_float32_tanh_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tanh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_tanh_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tanh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_tanh_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.tanh(x)
  end

  test "math_float32_asinh_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asinh(x, parallel: :never_parallel)
  end

  test "math_float32_asinh_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asinh(x, parallel: :never_parallel)
  end

  test "math_float32_asinh_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asinh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_asinh_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asinh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_asinh_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.asinh(x)
  end

  test "math_float32_asinh_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asinh(x, parallel: :never_parallel)
  end

  test "math_float32_asinh_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asinh(x, parallel: :never_parallel)
  end

  test "math_float32_asinh_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asinh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_asinh_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asinh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_asinh_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.asinh(x)
  end

  test "math_float32_asinh_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asinh(x, parallel: :never_parallel)
  end

  test "math_float32_asinh_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asinh(x, parallel: :never_parallel)
  end

  test "math_float32_asinh_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asinh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_asinh_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asinh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_asinh_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.asinh(x)
  end

  test "math_float32_asinh_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asinh(x, parallel: :never_parallel)
  end

  test "math_float32_asinh_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asinh(x, parallel: :never_parallel)
  end

  test "math_float32_asinh_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asinh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_asinh_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asinh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_asinh_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.asinh(x)
  end

  test "math_float32_asinh_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asinh(x, parallel: :never_parallel)
  end

  test "math_float32_asinh_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asinh(x, parallel: :never_parallel)
  end

  test "math_float32_asinh_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asinh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_asinh_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asinh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_asinh_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.asinh(x)
  end

  test "math_float32_asinh_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asinh(x, parallel: :never_parallel)
  end

  test "math_float32_asinh_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asinh(x, parallel: :never_parallel)
  end

  test "math_float32_asinh_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asinh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_asinh_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asinh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_asinh_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.asinh(x)
  end

  test "math_float32_acosh_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acosh(x, parallel: :never_parallel)
  end

  test "math_float32_acosh_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acosh(x, parallel: :never_parallel)
  end

  test "math_float32_acosh_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acosh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_acosh_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acosh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_acosh_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.acosh(x)
  end

  test "math_float32_acosh_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acosh(x, parallel: :never_parallel)
  end

  test "math_float32_acosh_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acosh(x, parallel: :never_parallel)
  end

  test "math_float32_acosh_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acosh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_acosh_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acosh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_acosh_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.acosh(x)
  end

  test "math_float32_acosh_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acosh(x, parallel: :never_parallel)
  end

  test "math_float32_acosh_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acosh(x, parallel: :never_parallel)
  end

  test "math_float32_acosh_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acosh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_acosh_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acosh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_acosh_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.acosh(x)
  end

  test "math_float32_acosh_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acosh(x, parallel: :never_parallel)
  end

  test "math_float32_acosh_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acosh(x, parallel: :never_parallel)
  end

  test "math_float32_acosh_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acosh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_acosh_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acosh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_acosh_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.acosh(x)
  end

  test "math_float32_acosh_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acosh(x, parallel: :never_parallel)
  end

  test "math_float32_acosh_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acosh(x, parallel: :never_parallel)
  end

  test "math_float32_acosh_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acosh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_acosh_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acosh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_acosh_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.acosh(x)
  end

  test "math_float32_acosh_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acosh(x, parallel: :never_parallel)
  end

  test "math_float32_acosh_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acosh(x, parallel: :never_parallel)
  end

  test "math_float32_acosh_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acosh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_acosh_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acosh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_acosh_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.acosh(x)
  end

  test "math_float32_atanh_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atanh(x, parallel: :never_parallel)
  end

  test "math_float32_atanh_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atanh(x, parallel: :never_parallel)
  end

  test "math_float32_atanh_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atanh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_atanh_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atanh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_atanh_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.atanh(x)
  end

  test "math_float32_atanh_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atanh(x, parallel: :never_parallel)
  end

  test "math_float32_atanh_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atanh(x, parallel: :never_parallel)
  end

  test "math_float32_atanh_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atanh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_atanh_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atanh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_atanh_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.atanh(x)
  end

  test "math_float32_atanh_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atanh(x, parallel: :never_parallel)
  end

  test "math_float32_atanh_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atanh(x, parallel: :never_parallel)
  end

  test "math_float32_atanh_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atanh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_atanh_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atanh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_atanh_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.atanh(x)
  end

  test "math_float32_atanh_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atanh(x, parallel: :never_parallel)
  end

  test "math_float32_atanh_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atanh(x, parallel: :never_parallel)
  end

  test "math_float32_atanh_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atanh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_atanh_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atanh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_atanh_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.atanh(x)
  end

  test "math_float32_atanh_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atanh(x, parallel: :never_parallel)
  end

  test "math_float32_atanh_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atanh(x, parallel: :never_parallel)
  end

  test "math_float32_atanh_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atanh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_atanh_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atanh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_atanh_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.atanh(x)
  end

  test "math_float32_atanh_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atanh(x, parallel: :never_parallel)
  end

  test "math_float32_atanh_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atanh(x, parallel: :never_parallel)
  end

  test "math_float32_atanh_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atanh(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_atanh_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atanh(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_atanh_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.atanh(x)
  end

  test "math_float32_abs_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.abs(x, parallel: :never_parallel)
  end

  test "math_float32_abs_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.abs(x, parallel: :never_parallel)
  end

  test "math_float32_abs_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.abs(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_abs_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.abs(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_abs_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.abs(x)
  end

  test "math_float32_abs_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.abs(x, parallel: :never_parallel)
  end

  test "math_float32_abs_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.abs(x, parallel: :never_parallel)
  end

  test "math_float32_abs_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.abs(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_abs_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.abs(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_abs_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.abs(x)
  end

  test "math_float32_abs_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.abs(x, parallel: :never_parallel)
  end

  test "math_float32_abs_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.abs(x, parallel: :never_parallel)
  end

  test "math_float32_abs_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.abs(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_abs_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.abs(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_abs_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.abs(x)
  end

  test "math_float32_abs_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.abs(x, parallel: :never_parallel)
  end

  test "math_float32_abs_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.abs(x, parallel: :never_parallel)
  end

  test "math_float32_abs_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.abs(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_abs_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.abs(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_abs_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.abs(x)
  end

  test "math_float32_abs_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.abs(x, parallel: :never_parallel)
  end

  test "math_float32_abs_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.abs(x, parallel: :never_parallel)
  end

  test "math_float32_abs_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.abs(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_abs_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.abs(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_abs_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.abs(x)
  end

  test "math_float32_abs_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.abs(x, parallel: :never_parallel)
  end

  test "math_float32_abs_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.abs(x, parallel: :never_parallel)
  end

  test "math_float32_abs_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.abs(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_abs_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.abs(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_abs_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.abs(x)
  end

  test "math_float32_cbrt_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cube_root(x, parallel: :never_parallel)
  end

  test "math_float32_cbrt_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cube_root(x, parallel: :never_parallel)
  end

  test "math_float32_cbrt_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cube_root(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cbrt_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cube_root(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cbrt_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.cube_root(x)
  end

  test "math_float32_cbrt_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cube_root(x, parallel: :never_parallel)
  end

  test "math_float32_cbrt_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cube_root(x, parallel: :never_parallel)
  end

  test "math_float32_cbrt_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cube_root(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cbrt_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cube_root(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cbrt_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.cube_root(x)
  end

  test "math_float32_cbrt_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cube_root(x, parallel: :never_parallel)
  end

  test "math_float32_cbrt_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cube_root(x, parallel: :never_parallel)
  end

  test "math_float32_cbrt_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cube_root(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cbrt_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cube_root(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cbrt_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.cube_root(x)
  end

  test "math_float32_cbrt_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cube_root(x, parallel: :never_parallel)
  end

  test "math_float32_cbrt_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cube_root(x, parallel: :never_parallel)
  end

  test "math_float32_cbrt_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cube_root(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cbrt_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cube_root(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cbrt_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.cube_root(x)
  end

  test "math_float32_cbrt_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cube_root(x, parallel: :never_parallel)
  end

  test "math_float32_cbrt_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cube_root(x, parallel: :never_parallel)
  end

  test "math_float32_cbrt_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cube_root(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cbrt_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cube_root(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cbrt_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.cube_root(x)
  end

  test "math_float32_cbrt_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cube_root(x, parallel: :never_parallel)
  end

  test "math_float32_cbrt_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cube_root(x, parallel: :never_parallel)
  end

  test "math_float32_cbrt_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cube_root(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_cbrt_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cube_root(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_cbrt_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.cube_root(x)
  end

  test "math_float32_erf_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.erf(x, parallel: :never_parallel)
  end

  test "math_float32_erf_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.erf(x, parallel: :never_parallel)
  end

  test "math_float32_erf_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.erf(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_erf_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.erf(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_erf_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.erf(x)
  end

  test "math_float32_erf_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.erf(x, parallel: :never_parallel)
  end

  test "math_float32_erf_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.erf(x, parallel: :never_parallel)
  end

  test "math_float32_erf_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.erf(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_erf_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.erf(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_erf_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.erf(x)
  end

  test "math_float32_erf_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.erf(x, parallel: :never_parallel)
  end

  test "math_float32_erf_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.erf(x, parallel: :never_parallel)
  end

  test "math_float32_erf_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.erf(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_erf_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.erf(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_erf_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.erf(x)
  end

  test "math_float32_erf_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.erf(x, parallel: :never_parallel)
  end

  test "math_float32_erf_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.erf(x, parallel: :never_parallel)
  end

  test "math_float32_erf_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.erf(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_erf_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.erf(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_erf_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.erf(x)
  end

  test "math_float32_erf_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.erf(x, parallel: :never_parallel)
  end

  test "math_float32_erf_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.erf(x, parallel: :never_parallel)
  end

  test "math_float32_erf_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.erf(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_erf_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.erf(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_erf_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.erf(x)
  end

  test "math_float32_erf_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.erf(x, parallel: :never_parallel)
  end

  test "math_float32_erf_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.erf(x, parallel: :never_parallel)
  end

  test "math_float32_erf_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.erf(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_erf_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.erf(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_erf_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.erf(x)
  end

  test "math_float32_erfc_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.erfc(x, parallel: :never_parallel)
  end

  test "math_float32_erfc_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.erfc(x, parallel: :never_parallel)
  end

  test "math_float32_erfc_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.erfc(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_erfc_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.erfc(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_erfc_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.erfc(x)
  end

  test "math_float32_erfc_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.erfc(x, parallel: :never_parallel)
  end

  test "math_float32_erfc_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.erfc(x, parallel: :never_parallel)
  end

  test "math_float32_erfc_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.erfc(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_erfc_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.erfc(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_erfc_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.erfc(x)
  end

  test "math_float32_erfc_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.erfc(x, parallel: :never_parallel)
  end

  test "math_float32_erfc_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.erfc(x, parallel: :never_parallel)
  end

  test "math_float32_erfc_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.erfc(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_erfc_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.erfc(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_erfc_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.erfc(x)
  end

  test "math_float32_erfc_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.erfc(x, parallel: :never_parallel)
  end

  test "math_float32_erfc_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.erfc(x, parallel: :never_parallel)
  end

  test "math_float32_erfc_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.erfc(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_erfc_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.erfc(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_erfc_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.erfc(x)
  end

  test "math_float32_erfc_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.erfc(x, parallel: :never_parallel)
  end

  test "math_float32_erfc_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.erfc(x, parallel: :never_parallel)
  end

  test "math_float32_erfc_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.erfc(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_erfc_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.erfc(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_erfc_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.erfc(x)
  end

  test "math_float32_erfc_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.erfc(x, parallel: :never_parallel)
  end

  test "math_float32_erfc_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.erfc(x, parallel: :never_parallel)
  end

  test "math_float32_erfc_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.erfc(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_erfc_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.erfc(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_erfc_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.erfc(x)
  end

  test "math_float32_j0_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.j0(x, parallel: :never_parallel)
  end

  test "math_float32_j0_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.j0(x, parallel: :never_parallel)
  end

  test "math_float32_j0_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.j0(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_j0_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.j0(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_j0_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.j0(x)
  end

  test "math_float32_j0_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.j0(x, parallel: :never_parallel)
  end

  test "math_float32_j0_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.j0(x, parallel: :never_parallel)
  end

  test "math_float32_j0_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.j0(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_j0_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.j0(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_j0_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.j0(x)
  end

  test "math_float32_j0_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.j0(x, parallel: :never_parallel)
  end

  test "math_float32_j0_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.j0(x, parallel: :never_parallel)
  end

  test "math_float32_j0_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.j0(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_j0_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.j0(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_j0_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.j0(x)
  end

  test "math_float32_j0_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.j0(x, parallel: :never_parallel)
  end

  test "math_float32_j0_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.j0(x, parallel: :never_parallel)
  end

  test "math_float32_j0_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.j0(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_j0_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.j0(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_j0_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.j0(x)
  end

  test "math_float32_j0_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.j0(x, parallel: :never_parallel)
  end

  test "math_float32_j0_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.j0(x, parallel: :never_parallel)
  end

  test "math_float32_j0_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.j0(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_j0_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.j0(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_j0_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.j0(x)
  end

  test "math_float32_j0_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.j0(x, parallel: :never_parallel)
  end

  test "math_float32_j0_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.j0(x, parallel: :never_parallel)
  end

  test "math_float32_j0_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.j0(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_j0_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.j0(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_j0_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.j0(x)
  end

  test "math_float32_j1_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.j1(x, parallel: :never_parallel)
  end

  test "math_float32_j1_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.j1(x, parallel: :never_parallel)
  end

  test "math_float32_j1_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.j1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_j1_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.j1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_j1_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.j1(x)
  end

  test "math_float32_j1_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.j1(x, parallel: :never_parallel)
  end

  test "math_float32_j1_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.j1(x, parallel: :never_parallel)
  end

  test "math_float32_j1_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.j1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_j1_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.j1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_j1_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.j1(x)
  end

  test "math_float32_j1_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.j1(x, parallel: :never_parallel)
  end

  test "math_float32_j1_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.j1(x, parallel: :never_parallel)
  end

  test "math_float32_j1_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.j1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_j1_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.j1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_j1_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.j1(x)
  end

  test "math_float32_j1_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.j1(x, parallel: :never_parallel)
  end

  test "math_float32_j1_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.j1(x, parallel: :never_parallel)
  end

  test "math_float32_j1_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.j1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_j1_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.j1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_j1_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.j1(x)
  end

  test "math_float32_j1_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.j1(x, parallel: :never_parallel)
  end

  test "math_float32_j1_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.j1(x, parallel: :never_parallel)
  end

  test "math_float32_j1_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.j1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_j1_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.j1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_j1_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.j1(x)
  end

  test "math_float32_j1_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.j1(x, parallel: :never_parallel)
  end

  test "math_float32_j1_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.j1(x, parallel: :never_parallel)
  end

  test "math_float32_j1_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.j1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_j1_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.j1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_j1_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.j1(x)
  end

  test "math_float32_lgamma_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.lgamma(x, parallel: :never_parallel)
  end

  test "math_float32_lgamma_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.lgamma(x, parallel: :never_parallel)
  end

  test "math_float32_lgamma_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.lgamma(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_lgamma_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.lgamma(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_lgamma_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.lgamma(x)
  end

  test "math_float32_lgamma_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.lgamma(x, parallel: :never_parallel)
  end

  test "math_float32_lgamma_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.lgamma(x, parallel: :never_parallel)
  end

  test "math_float32_lgamma_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.lgamma(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_lgamma_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.lgamma(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_lgamma_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.lgamma(x)
  end

  test "math_float32_lgamma_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.lgamma(x, parallel: :never_parallel)
  end

  test "math_float32_lgamma_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.lgamma(x, parallel: :never_parallel)
  end

  test "math_float32_lgamma_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.lgamma(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_lgamma_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.lgamma(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_lgamma_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.lgamma(x)
  end

  test "math_float32_lgamma_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.lgamma(x, parallel: :never_parallel)
  end

  test "math_float32_lgamma_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.lgamma(x, parallel: :never_parallel)
  end

  test "math_float32_lgamma_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.lgamma(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_lgamma_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.lgamma(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_lgamma_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.lgamma(x)
  end

  test "math_float32_lgamma_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.lgamma(x, parallel: :never_parallel)
  end

  test "math_float32_lgamma_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.lgamma(x, parallel: :never_parallel)
  end

  test "math_float32_lgamma_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.lgamma(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_lgamma_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.lgamma(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_lgamma_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.lgamma(x)
  end

  test "math_float32_lgamma_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.lgamma(x, parallel: :never_parallel)
  end

  test "math_float32_lgamma_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.lgamma(x, parallel: :never_parallel)
  end

  test "math_float32_lgamma_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.lgamma(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_lgamma_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.lgamma(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_lgamma_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.lgamma(x)
  end

  test "math_float32_y0_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.y0(x, parallel: :never_parallel)
  end

  test "math_float32_y0_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.y0(x, parallel: :never_parallel)
  end

  test "math_float32_y0_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.y0(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_y0_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.y0(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_y0_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.y0(x)
  end

  test "math_float32_y0_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.y0(x, parallel: :never_parallel)
  end

  test "math_float32_y0_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.y0(x, parallel: :never_parallel)
  end

  test "math_float32_y0_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.y0(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_y0_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.y0(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_y0_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.y0(x)
  end

  test "math_float32_y0_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.y0(x, parallel: :never_parallel)
  end

  test "math_float32_y0_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.y0(x, parallel: :never_parallel)
  end

  test "math_float32_y0_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.y0(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_y0_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.y0(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_y0_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.y0(x)
  end

  test "math_float32_y0_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.y0(x, parallel: :never_parallel)
  end

  test "math_float32_y0_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.y0(x, parallel: :never_parallel)
  end

  test "math_float32_y0_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.y0(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_y0_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.y0(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_y0_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.y0(x)
  end

  test "math_float32_y0_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.y0(x, parallel: :never_parallel)
  end

  test "math_float32_y0_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.y0(x, parallel: :never_parallel)
  end

  test "math_float32_y0_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.y0(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_y0_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.y0(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_y0_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.y0(x)
  end

  test "math_float32_y0_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.y0(x, parallel: :never_parallel)
  end

  test "math_float32_y0_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.y0(x, parallel: :never_parallel)
  end

  test "math_float32_y0_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.y0(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_y0_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.y0(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_y0_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.y0(x)
  end

  test "math_float32_y1_array1 function works on 1D array (sequential)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.y1(x, parallel: :never_parallel)
  end

  test "math_float32_y1_array1 function works on 1D array (parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.y1(x, parallel: :never_parallel)
  end

  test "math_float32_y1_array1 function works on 1D array (parallelization cutoff; not parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.y1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_y1_array1 function works on 1D array (parallelization cutoff; parallel)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.y1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_y1_array1 function works on 1D array (default parallelization strategy)" do
    x = Array1.ones(500)
    assert %Array1{} = SciEx.y1(x)
  end

  test "math_float32_y1_array1 function works on 2D array (sequential)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.y1(x, parallel: :never_parallel)
  end

  test "math_float32_y1_array1 function works on 2D array (parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.y1(x, parallel: :never_parallel)
  end

  test "math_float32_y1_array1 function works on 2D array (parallelization cutoff; not parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.y1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_y1_array1 function works on 2D array (parallelization cutoff; parallel)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.y1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_y1_array1 function works on 2D array (default parallelization strategy)" do
    x = Array2.ones(23, 23)
    assert %Array2{} = SciEx.y1(x)
  end

  test "math_float32_y1_array1 function works on 3D array (sequential)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.y1(x, parallel: :never_parallel)
  end

  test "math_float32_y1_array1 function works on 3D array (parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.y1(x, parallel: :never_parallel)
  end

  test "math_float32_y1_array1 function works on 3D array (parallelization cutoff; not parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.y1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_y1_array1 function works on 3D array (parallelization cutoff; parallel)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.y1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_y1_array1 function works on 3D array (default parallelization strategy)" do
    x = Array3.ones(8, 8, 8)
    assert %Array3{} = SciEx.y1(x)
  end

  test "math_float32_y1_array1 function works on 4D array (sequential)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.y1(x, parallel: :never_parallel)
  end

  test "math_float32_y1_array1 function works on 4D array (parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.y1(x, parallel: :never_parallel)
  end

  test "math_float32_y1_array1 function works on 4D array (parallelization cutoff; not parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.y1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_y1_array1 function works on 4D array (parallelization cutoff; parallel)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.y1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_y1_array1 function works on 4D array (default parallelization strategy)" do
    x = Array4.ones(5, 5, 5, 5)
    assert %Array4{} = SciEx.y1(x)
  end

  test "math_float32_y1_array1 function works on 5D array (sequential)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.y1(x, parallel: :never_parallel)
  end

  test "math_float32_y1_array1 function works on 5D array (parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.y1(x, parallel: :never_parallel)
  end

  test "math_float32_y1_array1 function works on 5D array (parallelization cutoff; not parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.y1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_y1_array1 function works on 5D array (parallelization cutoff; parallel)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.y1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_y1_array1 function works on 5D array (default parallelization strategy)" do
    x = Array5.ones(4, 4, 4, 4, 4)
    assert %Array5{} = SciEx.y1(x)
  end

  test "math_float32_y1_array1 function works on 6D array (sequential)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.y1(x, parallel: :never_parallel)
  end

  test "math_float32_y1_array1 function works on 6D array (parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.y1(x, parallel: :never_parallel)
  end

  test "math_float32_y1_array1 function works on 6D array (parallelization cutoff; not parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.y1(x, parallel: {:size_cutoff, 2000})
  end

  test "math_float32_y1_array1 function works on 6D array (parallelization cutoff; parallel)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.y1(x, parallel: {:size_cutoff, 100})
  end

  test "math_float32_y1_array1 function works on 6D array (default parallelization strategy)" do
    x = Array6.ones(3, 3, 3, 3, 3, 3)
    assert %Array6{} = SciEx.y1(x)
  end
end
