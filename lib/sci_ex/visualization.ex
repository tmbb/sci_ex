defmodule SciEx.Visualization do
  alias SciEx.Visualization.Contour
  alias SciEx.{SciExNif, Float32, Float64}

  @spec contours(Float32.Array2.t() | Float64.Array2.t(), list(float()), Keyword.t()) :: list(Contour.t())
  def contours(array2, thresholds, opts \\ []) do
    smoothed = Keyword.get(opts, :smoothed, false)

    case array2 do
      %Float64.Array2{} ->
        SciExNif.visualization_float64_build_contours(array2, thresholds, smoothed)

      %Float32.Array2{} ->
        SciExNif.visualization_float32_build_contours(array2, thresholds, smoothed)

      _ ->
        raise ArgumentError, "requires either a %SciEx.Float64.Array2{} or %SciEx.Float32.Array2{}"
    end
  end
end
