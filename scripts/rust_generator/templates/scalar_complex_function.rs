#[rustler::nif]
pub fn <%= @f.ex_function %>(<%= @f_typed_args %>) -> <%= @f.result_type %> {
    <%= @f.result_type %>::new(<%= @f.rs_module %>::<%= @f.rs_function %>(<%= @f_args %>))
}
