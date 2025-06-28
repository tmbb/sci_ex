mod datatypes;
mod stats;
mod array_builders;

mod math_float64;
mod math_float32;

mod math_complex64;
mod math_complex32;

mod fft_float64;
mod fft_float32;

mod array_comparisons;

mod array_binary_operations;

mod expression;

mod visualization;

rustler::init!("Elixir.SciEx.SciExNif");