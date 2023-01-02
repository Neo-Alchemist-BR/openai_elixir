defmodule Openai.MixProject do
  use Mix.Project

  def project do
    [
      app: :openai,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Openai.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.5"},
      {:jason, "~> 1.4"},
      # Dev deps
      {:ex_doc, "~> 0.29"}
    ]
  end
end
