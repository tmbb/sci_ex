defmodule SciEx.Operators do
  defmacro __using__(_opts) do
    quote do
      import Kernel, except: [+: 2, -: 2, *: 2, /: 2], warn: false
      import SciEx, only: [+: 2, -: 2, *: 2, /: 2]
    end
  end
end
