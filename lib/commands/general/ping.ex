defmodule Bot.Commands.General.Ping do
  require Logger
  @behaviour Nosedrum.ApplicationCommand

  def name(), do: "ping"

  @impl true
  def description(), do: "Ping 🏓"

  @impl true
  def command(_interaction), do: [content: "🏓 Pong!"]

  @impl true
  def type(), do: :slash
end
