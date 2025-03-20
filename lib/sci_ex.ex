defmodule SciEx do
  @moduledoc """
  Documentation for `SciEx`.
  """

  alias SciEx.SciExNif

  alias SciEx.{Array1, Array2}

  def zeros(dims, opts \\ [])

  def zeros(n, opts) when is_integer(n) and n >= 0 do
    type = Keyword.get(opts, :type, :f64)

    case type do
      :f64 -> Array1.zeros(n)
    end
  end

  def zeros({n1, n2}, opts)
      when is_integer(n1) and
           is_integer(n2) and
           n1 >= 0 and
           n2 >= 0 do
    type = Keyword.get(opts, :type, :f64)

    case type do
      :f64 -> Array2.zeros(n1, n2)
    end
  end


  def cos(array) do
    case array do
      %Array1{} -> SciExNif.array1_cos(array)
      %Array2{} -> SciExNif.array2_cos(array)
    end
  end
end
