defmodule AwsSsmProvider.MixProject do
  use Mix.Project

  def project do
    [
      app: :aws_ssm_provider,
      version: "1.0.0",
      elixir: "~> 1.8",
      name: "AwsSsmProvider",
      description: "A configuration provider for Distillery which handles AWS SSM parameters",
      package: package(),
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

  defp deps do
    [
      {:distillery, "~> 2.1"},
      {:ex_doc, "~> 0.20.2", only: :dev, runtime: false},
      {:jason, "~> 1.1"}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/motherknows/aws_ssm_provider"}
    ]
  end
end
