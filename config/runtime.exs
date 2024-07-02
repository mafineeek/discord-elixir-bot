import Config

config :bot,
  guild_ids: [
    1215420324573872219
  ]

config :nostrum, token: System.get_env("DISCORD_TOKEN")

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  level: :info
