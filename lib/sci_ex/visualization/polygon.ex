defmodule SciEx.Visualization.Polygon do
  @moduledoc """
  A single polygon, possibly with wholes.
  """
  defstruct exterior: nil,
            interior: []
end
