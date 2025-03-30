#[rustler::nif]
pub fn <%= @f.ex_function %>(<%= @f_typed_args %>) -> <%= @f.result_type %> {
    <%= @f.rs_module %>::<%= @f.rs_function %>(<%= @f_args %>)
}
