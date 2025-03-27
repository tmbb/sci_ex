mod datatypes;
mod stats;
mod array_builders;

mod math_float64;
mod math_float32;

mod fft_float64;
mod fft_float32;

mod f64_array_comparisons;
mod f32_array_comparisons;

mod f64_array_binary_operations;
mod f32_array_binary_operations;

mod c64;


// use rustler::{NifResult, Error};
// use ndarray;
// use ndarray::Array1;

rustler::init!("Elixir.SciEx.SciExNif");