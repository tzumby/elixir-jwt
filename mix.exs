defmodule Jwt.Mixfile do
  use Mix.Project

  def project do
    [app: :yajwt,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "Yet another JWT lib",
     deps: deps(),
     package: package()]
  end

  def application do
    [extra_applications: [:crypto, :logger, :public_key]]
  end

  defp deps do
    [{:poison, "~> 2.2 or ~> 3.0"},
     {:ex_doc, "~> 0.15", only: :dev}]
  end

  defp package do
    [
      maintainers: ["Po Chen"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/princemaple/elixir-jwt"}
    ]
  end
end