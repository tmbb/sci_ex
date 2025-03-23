defmodule SciEx.Gen.Function do
  defstruct ex_function: nil,
            rs_function: nil,
            rs_module: nil,
            n_dim: nil,
            arguments: [],
            vectorization: nil,
            result_type: nil,
            returns_array: false
end
