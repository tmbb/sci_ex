mod datatypes;
mod stats;
mod array_builders;
mod array_axis;

mod math_float64;
mod math_float32;

mod math_complex64;
mod math_complex32;

mod fft_float64;
mod fft_float32;

mod array_comparisons;

mod array_binary_operations;
mod array_unary_operations;

mod expression;

mod visualization;

mod kde;

mod clustering;

rustler::init!("Elixir.SciEx.SciExNif");