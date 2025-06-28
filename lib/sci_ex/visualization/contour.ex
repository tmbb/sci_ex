defmodule SciEx.Visualization.Contour do
  @moduledoc """
  A contour, consisting of a number of
  disconnected polygons.
  """
  @type t() :: %__MODULE__{}

  defstruct geometry: [],
            threshold: nil
end
