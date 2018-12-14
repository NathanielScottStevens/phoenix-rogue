defmodule PhoenixRogueWeb.PageController do
  use PhoenixRogueWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
