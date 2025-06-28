defmodule SciEx.Symbolic do
  @moduledoc false

  def grad_wrt(expr, x) when expr == x, do: 1

  def grad_wrt(num, _x) when is_number(num), do: 0

  def grad_wrt({name, _meta, atom} = expr, x) when is_atom(name) and is_atom(atom) and expr != x, do: 0

  def grad_wrt({:+, meta, [a, b]}, x), do: {:+, meta, [grad_wrt(a, x), grad_wrt(b, x)]}

  def grad_wrt({:*, meta, [a, b]}, x) do
    {:+, meta, [
      {:*, meta, [b, grad_wrt(a, x)]},
      {:*, meta, [a, grad_wrt(b, x)]}]}
  end

  def simplify0({:+, _meta, [a, 0]}), do: simplify(a)
  def simplify0({:+, _meta, [0, b]}), do: simplify(b)
  def simplify0({:+, _meta, [a, b]}) when is_number(a) and is_number(b), do: a + b
  def simplify0({:+, meta, [a, b]}), do: {:+, meta, [simplify(a), simplify(b)]}

  def simplify0({:-, _meta, [a, b]}) when is_number(a) and is_number(b), do: a - b
  def simplify0({:-, meta, [a, b]}), do: {:+, meta, [simplify(a), simplify(b)]}

  def simplify0({:*, _meta, [a, b]}) when is_number(a) and is_number(b), do: a * b
  def simplify0({:*, _meta, [_a, 0]}), do: 0
  def simplify0({:*, _meta, [0, _b]}), do: 0
  def simplify0({:*, _meta, [a, 1]}), do: a
  def simplify0({:*, _meta, [1, b]}), do: b
  def simplify0({:*, meta, [a, b]}), do: {:*, meta, [simplify(a), simplify(b)]}

  def simplify0({:/, _meta, [a, b]}) when is_number(a) and is_number(b), do: a / b
  def simplify0({:/, _meta, [a, 1]}), do: simplify(a)
  def simplify0(other), do: other

  def simplify(expr) do
    expr2 = simplify0(expr)
    if expr2 == expr do
      expr
    else
      simplify0(expr2)
    end
  end

  def example() do
    grad_wrt(quote(do: h * x * x + y), quote(do: x)) |> simplify()
  end
end
