defmodule ScraperServerTest do
  use ExUnit.Case
  doctest ScraperServer

  test "greets the world" do
    assert ScraperServer.hello() == :world
  end
end
