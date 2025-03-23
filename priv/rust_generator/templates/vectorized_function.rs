#[rustler::nif]
pub fn <%= @f.ex_function %>(<%= @f_typed_args %>) -> <%= @f.result_type %> {
    let mut <%= @output_array %> = Array<%= @f.n_dim %>::zeros(<%= @array_arg.name %>.resource.0.dim());
    azip!((<%= @output_array %> in &mut <%= @output_array %>,
           <%= @f_args_as_refs %>) {
        // Save the result of the operation in the output array
        *<%= @output_array %> = <%= @f.rs_module %>::<%= @f.rs_function %>(<%= @f_args %>);
    });

    <%= @f.result_type %>::new(<%= @output_array %>)
}
