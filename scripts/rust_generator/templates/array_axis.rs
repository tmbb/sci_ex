use crate::datatypes::*;
use ndarray::Axis;

<%= for type <- ["float", "complex"], bits <- [32, 64], n_dims <- 1..6 do %><% type_uppercase = String.capitalize(type); _ = assigns %>
#[rustler::nif]
pub fn <%= type %><%= bits %>_array<%= n_dims %>_invert_axis(ex_array<%= n_dims %>: Ex<%= type_uppercase %><%= bits %>Array<%= n_dims %>, axis_nr: usize) -> Ex<%= type_uppercase %><%= bits %>Array<%= n_dims %> {
    let mut array_clone = ex_array<%= n_dims %>.resource.0.clone();
    array_clone.invert_axis(Axis(axis_nr));
    Ex<%= type_uppercase %><%= bits %>Array<%= n_dims %>::new(array_clone)
}
<% end %>