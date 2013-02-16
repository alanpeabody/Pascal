defmodule Pascal.Mixfile do
  use Mix.Project

  def project do
    [ app: :pascal,
      version: "0.0.1",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { Pascal, [] }]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [
      { :cowboy, github: "extend/cowboy", tag: "0.6.1" }
    ]
  end
end
