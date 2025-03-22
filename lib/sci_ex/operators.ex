defmodule SciEx.Operators do
  @moduledoc """
  Operators to use with arrays.

  To use operators in your module you just have to `use SciEx.Operators`.
  The operators imported by this module also work with normal Elixir numbers
  (floating point numbers or integers).
  """
  defmacro __using__(_opts) do
    quote do
      import Kernel, except: [+: 2, -: 2, *: 2, /: 2], warn: false
      import SciEx, only: [+: 2, -: 2, *: 2, /: 2]
    end
  end
end
