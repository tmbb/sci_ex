mod datatypes;
mod stats;
mod array_builders;

mod math_float64;
mod math_float32;

mod f64_array_comparisons;
mod f32_array_comparisons;

mod f64_array_binary_operations;
mod f32_array_binary_operations;

rustler::init!("Elixir.SciEx.SciExNif");