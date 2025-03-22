defmodule SciExTest.Float64.MathFunctionsTest do
  use ExUnit.Case
  use ExUnitProperties

  doctest SciEx

  alias SciEx.Float64.{Array1, Array2, Array3, Array4, Array5, Array6}<%=
    for f <- @functions, f.args == [] do %><%
      n_dim = f.nr_of_dimensions
      m = round(:math.ceil(:math.pow(500, 1/n_dim)))
      dims = Enum.intersperse(for _ <- 1..n_dim do to_string(m) end, ", ")
    %>

  test "<%= f.rs_function %> function works on <%= f.nr_of_dimensions %>D array" do
    x = Array<%= n_dim %>.ones(<%= dims %>)
    assert %Array<%= n_dim %>{} = SciEx.<%= f.rs_function %>(x)
  end<% end %>
end
