#[rustler::nif]
pub fn <%= @f.ex_function %>(<%= @f_typed_args %>, parallelization_strategy: ParallelizationStrategy) -> <%= @f.result_type %> {
    let <%= @output_array %> =
        match parallelization_strategy.should_be_parallel(<%= @array_arg.name %>) {
            true => <%= @array_arg.name %>.resource.0.par_mapv(<%= @f.rs_module %>::<%= @f.rs_function %>),
            false => <%= @array_arg.name %>.resource.0.mapv(<%= @f.rs_module %>::<%= @f.rs_function %>)
        };

    <%= @f.result_type %>::new(<%= @output_array %>)
}
