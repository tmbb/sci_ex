// ==================================================================================
// THIS FILE HAS BEEN AUTOGENERATED - Do not edit directly
// ----------------------------------------------------------------------------------
// Edit the template at 'scripts/rust_generator/templates/array_builders.rs' instead
// ==================================================================================

use rustler::{NifResult, Error};
use ndarray::{Array1, Array2, Array3, Array4, Array5, Array6};
use ndrustfft::Complex;
use crate::datatypes::*;

// Array builders - Real numbers
// ----------------------------


// Array of zeros
#[rustler::nif]
pub fn float32_array1_zeros(n1: usize) -> ExFloat32Array1 {
    ExFloat32Array1::new(Array1::zeros(n1))
}

#[rustler::nif]
pub fn float32_array2_zeros(n1: usize, n2: usize) -> ExFloat32Array2 {
    ExFloat32Array2::new(Array2::zeros((n1, n2)))
}

#[rustler::nif]
pub fn float32_array3_zeros(n1: usize, n2: usize, n3: usize) -> ExFloat32Array3 {
    ExFloat32Array3::new(Array3::zeros((n1, n2, n3)))
}

#[rustler::nif]
pub fn float32_array4_zeros(n1: usize, n2: usize, n3: usize, n4: usize) -> ExFloat32Array4 {
    ExFloat32Array4::new(Array4::zeros((n1, n2, n3, n4)))
}

#[rustler::nif]
pub fn float32_array5_zeros(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize) -> ExFloat32Array5 {
    ExFloat32Array5::new(Array5::zeros((n1, n2, n3, n4, n5)))
}

#[rustler::nif]
pub fn float32_array6_zeros(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize, n6: usize) -> ExFloat32Array6 {
    ExFloat32Array6::new(Array6::zeros((n1, n2, n3, n4, n5, n6)))
}


// Array of ones
#[rustler::nif]
pub fn float32_array1_ones(n1: usize) -> ExFloat32Array1 {
    ExFloat32Array1::new(Array1::ones(n1))
}

#[rustler::nif]
pub fn float32_array2_ones(n1: usize, n2: usize) -> ExFloat32Array2 {
    ExFloat32Array2::new(Array2::ones((n1, n2)))
}

#[rustler::nif]
pub fn float32_array3_ones(n1: usize, n2: usize, n3: usize) -> ExFloat32Array3 {
    ExFloat32Array3::new(Array3::ones((n1, n2, n3)))
}

#[rustler::nif]
pub fn float32_array4_ones(n1: usize, n2: usize, n3: usize, n4: usize) -> ExFloat32Array4 {
    ExFloat32Array4::new(Array4::ones((n1, n2, n3, n4)))
}

#[rustler::nif]
pub fn float32_array5_ones(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize) -> ExFloat32Array5 {
    ExFloat32Array5::new(Array5::ones((n1, n2, n3, n4, n5)))
}

#[rustler::nif]
pub fn float32_array6_ones(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize, n6: usize) -> ExFloat32Array6 {
    ExFloat32Array6::new(Array6::ones((n1, n2, n3, n4, n5, n6)))
}

// Array of zeros
#[rustler::nif]
pub fn float64_array1_zeros(n1: usize) -> ExFloat64Array1 {
    ExFloat64Array1::new(Array1::zeros(n1))
}

#[rustler::nif]
pub fn float64_array2_zeros(n1: usize, n2: usize) -> ExFloat64Array2 {
    ExFloat64Array2::new(Array2::zeros((n1, n2)))
}

#[rustler::nif]
pub fn float64_array3_zeros(n1: usize, n2: usize, n3: usize) -> ExFloat64Array3 {
    ExFloat64Array3::new(Array3::zeros((n1, n2, n3)))
}

#[rustler::nif]
pub fn float64_array4_zeros(n1: usize, n2: usize, n3: usize, n4: usize) -> ExFloat64Array4 {
    ExFloat64Array4::new(Array4::zeros((n1, n2, n3, n4)))
}

#[rustler::nif]
pub fn float64_array5_zeros(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize) -> ExFloat64Array5 {
    ExFloat64Array5::new(Array5::zeros((n1, n2, n3, n4, n5)))
}

#[rustler::nif]
pub fn float64_array6_zeros(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize, n6: usize) -> ExFloat64Array6 {
    ExFloat64Array6::new(Array6::zeros((n1, n2, n3, n4, n5, n6)))
}


// Array of ones
#[rustler::nif]
pub fn float64_array1_ones(n1: usize) -> ExFloat64Array1 {
    ExFloat64Array1::new(Array1::ones(n1))
}

#[rustler::nif]
pub fn float64_array2_ones(n1: usize, n2: usize) -> ExFloat64Array2 {
    ExFloat64Array2::new(Array2::ones((n1, n2)))
}

#[rustler::nif]
pub fn float64_array3_ones(n1: usize, n2: usize, n3: usize) -> ExFloat64Array3 {
    ExFloat64Array3::new(Array3::ones((n1, n2, n3)))
}

#[rustler::nif]
pub fn float64_array4_ones(n1: usize, n2: usize, n3: usize, n4: usize) -> ExFloat64Array4 {
    ExFloat64Array4::new(Array4::ones((n1, n2, n3, n4)))
}

#[rustler::nif]
pub fn float64_array5_ones(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize) -> ExFloat64Array5 {
    ExFloat64Array5::new(Array5::ones((n1, n2, n3, n4, n5)))
}

#[rustler::nif]
pub fn float64_array6_ones(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize, n6: usize) -> ExFloat64Array6 {
    ExFloat64Array6::new(Array6::ones((n1, n2, n3, n4, n5, n6)))
}


// Array builders - Complex numbers
// --------------------------------


// Array of zeros
#[rustler::nif]
pub fn complex32_array1_zeros(n1: usize) -> ExComplex32Array1 {
    ExComplex32Array1::new(Array1::zeros(n1))
}

#[rustler::nif]
pub fn complex32_array2_zeros(n1: usize, n2: usize) -> ExComplex32Array2 {
    ExComplex32Array2::new(
      Array2::zeros((n1, n2))
      .mapv(|_: f32| Complex::new(0.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex32_array3_zeros(n1: usize, n2: usize, n3: usize) -> ExComplex32Array3 {
    ExComplex32Array3::new(
      Array3::zeros((n1, n2, n3))
      .mapv(|_: f32| Complex::new(0.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex32_array4_zeros(n1: usize, n2: usize, n3: usize, n4: usize) -> ExComplex32Array4 {
    ExComplex32Array4::new(
      Array4::zeros((n1, n2, n3, n4))
      .mapv(|_: f32| Complex::new(0.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex32_array5_zeros(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize) -> ExComplex32Array5 {
    ExComplex32Array5::new(
      Array5::zeros((n1, n2, n3, n4, n5))
      .mapv(|_: f32| Complex::new(0.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex32_array6_zeros(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize, n6: usize) -> ExComplex32Array6 {
    ExComplex32Array6::new(
      Array6::zeros((n1, n2, n3, n4, n5, n6))
      .mapv(|_: f32| Complex::new(0.0, 0.0))
    )
}


// Array of ones
#[rustler::nif]
pub fn complex32_array1_ones(n1: usize) -> ExComplex32Array1 {
    ExComplex32Array1::new(Array1::ones(n1))
}

#[rustler::nif]
pub fn complex32_array2_ones(n1: usize, n2: usize) -> ExComplex32Array2 {
    ExComplex32Array2::new(
      Array2::ones((n1, n2))
      .mapv(|_: f32| Complex::new(1.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex32_array3_ones(n1: usize, n2: usize, n3: usize) -> ExComplex32Array3 {
    ExComplex32Array3::new(
      Array3::ones((n1, n2, n3))
      .mapv(|_: f32| Complex::new(1.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex32_array4_ones(n1: usize, n2: usize, n3: usize, n4: usize) -> ExComplex32Array4 {
    ExComplex32Array4::new(
      Array4::ones((n1, n2, n3, n4))
      .mapv(|_: f32| Complex::new(1.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex32_array5_ones(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize) -> ExComplex32Array5 {
    ExComplex32Array5::new(
      Array5::ones((n1, n2, n3, n4, n5))
      .mapv(|_: f32| Complex::new(1.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex32_array6_ones(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize, n6: usize) -> ExComplex32Array6 {
    ExComplex32Array6::new(
      Array6::ones((n1, n2, n3, n4, n5, n6))
      .mapv(|_: f32| Complex::new(1.0, 0.0))
    )
}

// Array of zeros
#[rustler::nif]
pub fn complex64_array1_zeros(n1: usize) -> ExComplex64Array1 {
    ExComplex64Array1::new(Array1::zeros(n1))
}

#[rustler::nif]
pub fn complex64_array2_zeros(n1: usize, n2: usize) -> ExComplex64Array2 {
    ExComplex64Array2::new(
      Array2::zeros((n1, n2))
      .mapv(|_: f64| Complex::new(0.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex64_array3_zeros(n1: usize, n2: usize, n3: usize) -> ExComplex64Array3 {
    ExComplex64Array3::new(
      Array3::zeros((n1, n2, n3))
      .mapv(|_: f64| Complex::new(0.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex64_array4_zeros(n1: usize, n2: usize, n3: usize, n4: usize) -> ExComplex64Array4 {
    ExComplex64Array4::new(
      Array4::zeros((n1, n2, n3, n4))
      .mapv(|_: f64| Complex::new(0.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex64_array5_zeros(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize) -> ExComplex64Array5 {
    ExComplex64Array5::new(
      Array5::zeros((n1, n2, n3, n4, n5))
      .mapv(|_: f64| Complex::new(0.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex64_array6_zeros(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize, n6: usize) -> ExComplex64Array6 {
    ExComplex64Array6::new(
      Array6::zeros((n1, n2, n3, n4, n5, n6))
      .mapv(|_: f64| Complex::new(0.0, 0.0))
    )
}


// Array of ones
#[rustler::nif]
pub fn complex64_array1_ones(n1: usize) -> ExComplex64Array1 {
    ExComplex64Array1::new(Array1::ones(n1))
}

#[rustler::nif]
pub fn complex64_array2_ones(n1: usize, n2: usize) -> ExComplex64Array2 {
    ExComplex64Array2::new(
      Array2::ones((n1, n2))
      .mapv(|_: f64| Complex::new(1.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex64_array3_ones(n1: usize, n2: usize, n3: usize) -> ExComplex64Array3 {
    ExComplex64Array3::new(
      Array3::ones((n1, n2, n3))
      .mapv(|_: f64| Complex::new(1.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex64_array4_ones(n1: usize, n2: usize, n3: usize, n4: usize) -> ExComplex64Array4 {
    ExComplex64Array4::new(
      Array4::ones((n1, n2, n3, n4))
      .mapv(|_: f64| Complex::new(1.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex64_array5_ones(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize) -> ExComplex64Array5 {
    ExComplex64Array5::new(
      Array5::ones((n1, n2, n3, n4, n5))
      .mapv(|_: f64| Complex::new(1.0, 0.0))
    )
}

#[rustler::nif]
pub fn complex64_array6_ones(n1: usize, n2: usize, n3: usize, n4: usize, n5: usize, n6: usize) -> ExComplex64Array6 {
    ExComplex64Array6::new(
      Array6::ones((n1, n2, n3, n4, n5, n6))
      .mapv(|_: f64| Complex::new(1.0, 0.0))
    )
}


// Partitions of an interval
#[rustler::nif]
pub fn float64_array1_linspace(start: f64, stop: f64, n: usize) -> ExFloat64Array1 {
    let output_array: Array1<f64> = Array1::linspace(start, stop, n);
    ExFloat64Array1::new(output_array) 
}

#[rustler::nif]
pub fn float64_array1_geomspace(start: f64, stop: f64, n: usize) -> NifResult<ExFloat64Array1> {
    match Array1::geomspace(start, stop, n) {
        None => NifResult::Err(Error::BadArg),
        Some(output_array) => NifResult::Ok(ExFloat64Array1::new(output_array))
    }
}

#[rustler::nif]
pub fn float64_array1_logspace(base: f64, start: f64, stop: f64, n: usize) -> ExFloat64Array1 {
    let output_array: Array1<f64> = Array1::logspace(base, start, stop, n);
    ExFloat64Array1::new(output_array) 
}

#[rustler::nif]
pub fn float32_array1_linspace(start: f32, stop: f32, n: usize) -> ExFloat32Array1 {
    let output_array: Array1<f32> = Array1::linspace(start, stop, n);
    ExFloat32Array1::new(output_array) 
}

#[rustler::nif]
pub fn float32_array1_geomspace(start: f32, stop: f32, n: usize) -> NifResult<ExFloat32Array1> {
    match Array1::geomspace(start, stop, n) {
        None => NifResult::Err(Error::BadArg),
        Some(output_array) => NifResult::Ok(ExFloat32Array1::new(output_array))
    }
}

#[rustler::nif]
pub fn float32_array1_logspace(base: f32, start: f32, stop: f32, n: usize) -> ExFloat32Array1 {
    let output_array: Array1<f32> = Array1::logspace(base, start, stop, n);
    ExFloat32Array1::new(output_array) 
}