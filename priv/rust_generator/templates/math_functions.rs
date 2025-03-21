use ndarray::{Array1, Array2, Array3, Array4, Array5, Array6};
use libm;
use crate::datatypes::*;

// Math operations on f64
// ----------------------
<%= for group <- @functions do %><%= for function <- group do %><%= if function.args == [] do %>
#[rustler::nif]
pub fn <%= function.sci_ex_nif_name %>(ex_array: <%= function.arg_type %>) -> <%= function.result_type %> {
    let array: &Array<%= function.nr_of_dimensions %><<%= function.element_type %>> = &ex_array.resource.0;
    let result: Array<%= function.nr_of_dimensions %><<%= function.element_type %>> = array.mapv(<%= function.rs_module %>::<%= function.rs_function %>);
    <%= function.result_type %>::new(result)
}
<% else %><%
  typed_args = Enum.map(function.args, fn arg -> "#{arg[:name]}: #{arg[:type]}" end) |> Enum.intersperse(", ")
  untyped_args = Enum.map(function.args, fn arg -> arg[:name] end) |> Enum.intersperse(", ")
%>
#[rustler::nif]
pub fn <%= function.sci_ex_nif_name %>(ex_array: <%= function.arg_type %>, <%= typed_args %>) -> <%= function.result_type %> {
    let array: &Array<%= function.nr_of_dimensions %><<%= function.element_type %>> = &ex_array.resource.0;
    let result: Array<%= function.nr_of_dimensions %><<%= function.element_type %>> = array.mapv(|x| x.<%= function.rs_function %>(<%= untyped_args %>));
    <%= function.result_type %>::new(result)
}
<% end %><% end %><% end %>
