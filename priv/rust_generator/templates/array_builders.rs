use ndarray::{Array1, Array2, Array3, Array4, Array5, Array6};
use crate::datatypes::*;

// Array builders
// --------------

// Array of zeros
#[rustler::nif]
pub fn float64_array1_zeros(n1: usize) -> ExFloat64Array1 {
    ExFloat64Array1::new(Array1::zeros(n1))
}
<%= for n_dim <- 2..6 do %><% 
  typed_args = Enum.map(1..n_dim, fn i -> "n#{i}: usize" end) |> Enum.intersperse(", ")
  untyped_args = Enum.map(1..n_dim, fn i -> "n#{i}" end) |> Enum.intersperse(", ")
%>
#[rustler::nif]
pub fn float64_array<%= n_dim %>_zeros(<%= typed_args %>) -> ExFloat64Array<%= n_dim %> {
    ExFloat64Array<%= n_dim %>::new(Array<%= n_dim %>::zeros((<%= untyped_args %>)))
}
<% end %>

// Array of ones
#[rustler::nif]
pub fn float64_array1_ones(n1: usize) -> ExFloat64Array1 {
    ExFloat64Array1::new(Array1::ones(n1))
}
<%= for n_dim <- 2..6 do %><% 
  typed_args = Enum.map(1..n_dim, fn i -> "n#{i}: usize" end) |> Enum.intersperse(", ")
  untyped_args = Enum.map(1..n_dim, fn i -> "n#{i}" end) |> Enum.intersperse(", ")
%>
#[rustler::nif]
pub fn float64_array<%= n_dim %>_ones(<%= typed_args %>) -> ExFloat64Array<%= n_dim %> {
    ExFloat64Array<%= n_dim %>::new(Array<%= n_dim %>::ones((<%= untyped_args %>)))
}
<% end %>