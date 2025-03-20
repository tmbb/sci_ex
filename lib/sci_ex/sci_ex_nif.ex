defmodule SciEx.SciExNif do
  use Rustler,
    otp_app: :sci_ex,
    crate: :sci_ex_nif

  # 1D Arrays
  def array1_inspect(_array1), do: err()
  def array1_zeros(_n), do: err()
  def array1_sin(_array1), do: err()
  def array1_cos(_array1), do: err()
  def array1_exp(_array1), do: err()
  def array1_log(_array1), do: err()
  def array1_sqrt(_array1), do: err()

  # 2D Arrays
  def array2_inspect(_array2), do: err()
  def array2_zeros(_n1, _n2), do: err()
  def array2_sin(_array1), do: err()
  def array2_cos(_array1), do: err()
  def array2_exp(_array1), do: err()
  def array2_log(_array1), do: err()
  def array2_sqrt(_array1), do: err()

  defp err(), do: :erlang.nif_error(:nif_not_loaded)
end
