defmodule SciEx.MixProject do
  use Mix.Project

  @version "0.2.0"

  def project do
    [
      app: :sci_ex,
      version: @version,
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  defp package() do
    [
      # These are the default files included in the package
      files: ~w(lib priv .formatter.exs mix.exs README* readme* LICENSE*
                license* CHANGELOG* changelog* src native),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/tmbb/sci_ex"}
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
      {:expublish, "~> 2.5", only: [:dev], runtime: false},
      {:stream_data, "~> 1.0", only: [:dev, :test]},
      {:benchee, "~> 1.0", only: [:dev, :test]},
      {:benchee_html, "~> 1.0", only: [:dev, :test]}
    ]
  end
end
