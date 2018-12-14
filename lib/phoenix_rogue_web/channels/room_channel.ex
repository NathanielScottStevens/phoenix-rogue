defmodule PhoenixRogueWeb.RoomChannel do
  use Phoenix.Channel

  def join("room:lobby", _message, socket) do
    {:ok, socket}
  end
  def join("room:" <> _private_room_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end

  def handle_in("move", %{"body" => %{"x" => x, "y" => y}}, socket) do
    IO.inspect(x)
    IO.inspect(y)
    {:noreply, socket}
  end
end
