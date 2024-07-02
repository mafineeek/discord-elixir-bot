defmodule Bot.Commands.Fun.EightBall do
  require Logger
  @behaviour Nosedrum.ApplicationCommand

  @responses [
    "It is certain.",
    "Reply hazy, try again.",
    "It is decidedly so.",
    "Ask again later",
    "Without a doubt.",
    "Better not tell you now.",
    "Yes definitely.",
    "Cannot predict now.",
    "You may rely on it.",
    "Concentrate and ask again.",
    "As I see it, yes.",
    "Don't count on it.",
    "Most likely.",
    "My reply is no.",
    "Outlook good.",
    "My sources say no.",
    "Yes.",
    "Outlook not so good.",
    "Signs point to yes.",
    "Very doubtful."
  ]

  @impl true
  def name(), do: "8ball"

  @impl true
  def description(), do: "Seek the wisdom of AI"

  @impl true
  def command(%Nostrum.Struct.Interaction{id: id, data: %Nostrum.Struct.ApplicationCommandInteractionData{options: options}}) do
    question = options |> hd() |> Map.fetch!(:value)
    response = @responses |> Enum.random()

    content = """
      **Question:**
      `#{question}`\n
      **Response:**
      `#{response}`
    """

    [
      content: content
    ]
  end

  @impl true
  def type(), do: :slash

  @impl true
  def options() do
    [
      %{
        type: :string,
        name: "message",
        description: "Your question",
        required: true
      }
    ]
  end
end
