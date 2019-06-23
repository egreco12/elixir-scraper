defmodule Scraper do
  use Application

  def start(_type, _args) do
    # Although we don't use the supervisor name below directly,
    # it can be useful when debugging or introspecting the system.
    Scraper.Supervisor.start_link(name: Scraper.Supervisor)
  end
end
