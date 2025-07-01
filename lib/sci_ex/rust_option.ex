defmodule SciEx.RustOption do
  @moduledoc false

  def fetch(container, key) do
    case Access.fetch(container, key) do
      {:ok, result} -> {:some, result}
      :error -> :none
    end
  end
end
