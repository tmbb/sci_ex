mod datatypes;
mod stats;
mod array_builders;

mod f64_array_comparisons;
mod f32_array_comparisons;

mod f64_array_binary_operations;
mod f32_array_binary_operations;

mod f64_math_functions;
mod f32_math_functions;

rustler::init!("Elixir.SciEx.SciExNif");