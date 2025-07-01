defmodule SciEx.Statistics do
  alias SciEx.Float64
  alias SciEx.SciExNif
  alias SciEx.Statistics.ContinuousDensityLimits1D
  alias SciEx.RustOption

  def kde(array, opts \\ []) do
    limits = Keyword.get(opts, :limits, [])
    lower = RustOption.fetch(limits, :lower)
    upper = RustOption.fetch(limits, :upper)

    rust_limits = %ContinuousDensityLimits1D{lower: lower, upper: upper}

    case array do
      %Float64.Array1{} ->
        SciExNif.kde_float64_eval(array, 512, :botev_diffusion, rust_limits)
    end
  end
end
