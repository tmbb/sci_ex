defmodule SciEx.Benchmarks.ArrayOperations do
  alias SciEx
  alias SciEx.Random

  def inputs() do
    %{
      "10^2" => Random.draw_from_log_normal(3.0, 6.0, 100),
      "10^3" => Random.draw_from_log_normal(3.0, 6.0, 1000),
      "10^4" => Random.draw_from_log_normal(3.0, 6.0, 10_000),
      "10^5" => Random.draw_from_log_normal(3.0, 6.0, 100_000),
      # "10^6" => Random.draw_from_log_normal(3.0, 6.0, 1000_000),
      # "10^7" => Random.draw_from_log_normal(3.0, 6.0, 10_000_000)
    }
  end

  def run() do
    Benchee.run(
      %{
        "SciEx.cos" => fn x -> SciEx.cos(x) end,
        "SciEx.SciExNif.float64_array1_cos" => fn x -> SciEx.SciExNif.float64_array1_cos(x) end
      },
      inputs: inputs(),
      formatters: [
        # {Benchee.Formatters.HTML, %{file: "benchmarks/output/array_operations.html"}},
        Benchee.Formatters.Console
      ]
    )

    Benchee.run(
      %{
        "SciEx.sin" => fn x -> SciEx.sin(x) end,
        "SciEx.SciExNif.float64_array1_sin" => fn x -> SciEx.SciExNif.float64_array1_sin(x) end
      },
      inputs: inputs(),
      formatters: [
        # {Benchee.Formatters.HTML, %{file: "benchmarks/output/array_operations.html"}},
        Benchee.Formatters.Console
      ]
    )

    Benchee.run(
      %{
        "SciEx.exp" => fn x -> SciEx.exp(x) end,
        "SciEx.SciExNif.float64_array1_exp" => fn x -> SciEx.SciExNif.float64_array1_exp(x) end
      },
      inputs: inputs(),
      formatters: [
        # {Benchee.Formatters.HTML, %{file: "benchmarks/output/array_operations.html"}},
        Benchee.Formatters.Console
      ]
    )
  end
end

SciEx.Benchmarks.ArrayOperations.run()
