defmodule SciEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :sci_ex,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.36"},
      {:nimble_parsec, "~> 1.4"},
      {:ex_doc, "~> 0.37", only: :dev},
      {:stream_data, "~> 1.0", only: [:dev, :test]},
      {:benchee, "~> 1.0", only: [:dev, :test]},
      {:benchee_html, "~> 1.0", only: [:dev, :test]}
    ]
  end
end
