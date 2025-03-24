defmodule SciEx.Benchmarks.ParallelImpl do
  alias SciEx
  alias SciEx.Random

  def small_inputs() do
    %{
      "100k" => Random.draw_from_log_normal(0.5, 1.0, 100_000),
      "300k" => Random.draw_from_log_normal(0.5, 1.0, 300_000),
      "500k" => Random.draw_from_log_normal(0.5, 1.0, 500_000),
      "700k" => Random.draw_from_log_normal(0.5, 1.0, 700_000),
      "900k" => Random.draw_from_log_normal(0.5, 1.0, 900_000),
    }
  end

  def large_inputs() do
    %{
      "10^6" => Random.draw_from_log_normal(0.5, 1.0, 1_000_000),
      "10^7" => Random.draw_from_log_normal(0.5, 1.0, 10_000_000)
    }
  end

  def run_benchmark(name, fun, input_function, opts \\ []) do
    # Deliberately pick a relatively low runtime to avoid out of memory errors
    time = Keyword.get(opts, :time, 7.0)
    warmup = Keyword.get(opts, :time, 1.0)

    inputs = input_function.()

    functions = %{
      "Sequential - #{name}(x)" => fn x -> fun.(x, parallel: :never_parallel); :ok end,
      "Parallel - #{name}(x)" => fn x -> fun.(x, parallel: :always_parallel); :ok end
    }

    options = [
      inputs: inputs,
      time: time,
      warmup: warmup,
      formatters: [
        Benchee.Formatters.Console
      ]
    ]

    Benchee.run(functions, options)
  end

  def run() do
    # run_benchmark("sin", &SciEx.sin/2, &small_inputs/0)
    # run_benchmark("cos", &SciEx.sin/2, &small_inputs/0)
    # run_benchmark("exp", &SciEx.sin/2, &small_inputs/0)
    # run_benchmark("erf", &SciEx.sin/2, &small_inputs/0)
    # run_benchmark("y0", &SciEx.sin/2, &small_inputs/0)

    # Lower runtime to avoid out of memory errors
    run_benchmark("sin", &SciEx.sin/2, &large_inputs/0, time: 1.0)
    # run_benchmark("cos", &SciEx.sin/2, &small_inputs/0, time: 2.0)
    # run_benchmark("exp", &SciEx.sin/2, &small_inputs/0, time: 2.0)
    run_benchmark("erf", &SciEx.sin/2, &large_inputs/0, time: 1.0)
    # run_benchmark("y0", &SciEx.sin/2, &small_inputs/0, time: 2.0)
  end
end

SciEx.Benchmarks.ParallelImpl.run()
