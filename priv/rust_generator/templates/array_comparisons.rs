// ==================================================================================
// THIS FILE HAS BEEN AUTOGENERATED - Do not edit directly
// ----------------------------------------------------------------------------------
// Edit the template at 'priv/rust_generator/templates/array_comaprisons.rs' instead
// ==================================================================================


use ndarray::{Array1, Array2, Array3, Array4, Array5, Array6};
use crate::datatypes::*;

<%= for n_dim <- 1..6 do %>
#[rustler::nif]
pub fn float<%= @nr_of_bits %>_array<%= n_dim %>_equal(ex_array_a: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>, ex_array_b: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>) -> bool {
    let arr_a: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_a.resource.0;
    let arr_b: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_b.resource.0;
    
    arr_a.into_iter().zip(arr_b.into_iter()).all(|(a_i, b_i)| a_i == b_i)
}

#[rustler::nif]
pub fn float<%= @nr_of_bits %>_array<%= n_dim %>_not_equal(ex_array_a: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>, ex_array_b: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>) -> bool {
    let arr_a: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_a.resource.0;
    let arr_b: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_b.resource.0;
    
    !arr_a.into_iter().zip(arr_b.into_iter()).all(|(a_i, b_i)| a_i == b_i)
}

#[rustler::nif]
pub fn float<%= @nr_of_bits %>_array<%= n_dim %>_all_not_equal(ex_array_a: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>, ex_array_b: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>) -> bool {
    let arr_a: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_a.resource.0;
    let arr_b: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_b.resource.0;
    
    arr_a.into_iter().zip(arr_b.into_iter()).all(|(a_i, b_i)| a_i != b_i)
}

#[rustler::nif]
pub fn float<%= @nr_of_bits %>_array<%= n_dim %>_all_less_than(ex_array_a: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>, ex_array_b: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>) -> bool {
    let arr_a: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_a.resource.0;
    let arr_b: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_b.resource.0;
    
    arr_a.into_iter().zip(arr_b.into_iter()).all(|(a_i, b_i)| a_i < b_i)
}

#[rustler::nif]
pub fn float<%= @nr_of_bits %>_array<%= n_dim %>_all_less_than_or_equal(ex_array_a: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>, ex_array_b: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>) -> bool {
    let arr_a: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_a.resource.0;
    let arr_b: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_b.resource.0;
    
    arr_a.into_iter().zip(arr_b.into_iter()).all(|(a_i, b_i)| a_i <= b_i)
}

#[rustler::nif]
pub fn float<%= @nr_of_bits %>_array<%= n_dim %>_all_greater_than(ex_array_a: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>, ex_array_b: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>) -> bool {
    let arr_a: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_a.resource.0;
    let arr_b: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_b.resource.0;
    
    arr_a.into_iter().zip(arr_b.into_iter()).all(|(a_i, b_i)| a_i > b_i)
}

#[rustler::nif]
pub fn float<%= @nr_of_bits %>_array<%= n_dim %>_all_greater_than_or_equal(ex_array_a: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>, ex_array_b: ExFloat<%= @nr_of_bits %>Array<%= n_dim %>) -> bool {
    let arr_a: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_a.resource.0;
    let arr_b: &Array<%= n_dim %><f<%= @nr_of_bits %>> = &ex_array_b.resource.0;
    
    arr_a.into_iter().zip(arr_b.into_iter()).all(|(a_i, b_i)| a_i <= b_i)
}
<% end %>