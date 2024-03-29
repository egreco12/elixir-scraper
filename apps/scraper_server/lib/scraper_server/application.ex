defmodule ScraperServer.Application do
  use Application

  def start(_type, _args),
    do: Supervisor.start_link(children(), opts())

  defp children do
    [
      ScraperServer.Server
    ]
  end

  defp opts do
    [
      strategy: :one_for_one,
      name: ScraperServer.Supervisor
    ]
  end
end