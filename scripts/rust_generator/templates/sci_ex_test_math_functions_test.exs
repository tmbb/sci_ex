defmodule SciExTest.Float<%= @bits %>.MathFunctionsTest do
  use ExUnit.Case, async: true
  use ExUnitProperties

  doctest SciEx

  alias SciEx.Float64.{Array1, Array2, Array3, Array4, Array5, Array6}<%=
    for f <- @functions do %><%
      args = Enum.intersperse(for arg <- f.arguments do arg.name end, ", ")
    %><%= for n_dim <- 1..6 do %><%
        m = round(:math.ceil(:math.pow(500, 1/n_dim)))
        dims = Enum.intersperse(for _ <- 1..n_dim do to_string(m) end, ", ") %>

  test "<%= f.ex_function %> function works on <%= n_dim %>D array (sequential)" do
    x = Array<%= n_dim %>.ones(<%= dims %>)
    assert %Array<%= n_dim %>{} = SciEx.<%= f.rs_function %>(<%= args %>, parallel: :never_parallel)
  end

  test "<%= f.ex_function %> function works on <%= n_dim %>D array (parallel)" do
    x = Array<%= n_dim %>.ones(<%= dims %>)
    assert %Array<%= n_dim %>{} = SciEx.<%= f.rs_function %>(<%= args %>, parallel: :never_parallel)
  end

  test "<%= f.ex_function %> function works on <%= n_dim %>D array (parallelization cutoff; not parallel)" do
    x = Array<%= n_dim %>.ones(<%= dims %>)
    assert %Array<%= n_dim %>{} = SciEx.<%= f.rs_function %>(<%= args %>, parallel: {:size_cutoff, 2000})
  end

  test "<%= f.ex_function %> function works on <%= n_dim %>D array (parallelization cutoff; parallel)" do
    x = Array<%= n_dim %>.ones(<%= dims %>)
    assert %Array<%= n_dim %>{} = SciEx.<%= f.rs_function %>(<%= args %>, parallel: {:size_cutoff, 100})
  end

  test "<%= f.ex_function %> function works on <%= n_dim %>D array (default parallelization strategy)" do
    x = Array<%= n_dim %>.ones(<%= dims %>)
    assert %Array<%= n_dim %>{} = SciEx.<%= f.rs_function %>(<%= args %>)
  end<% end %><% end %>
end
