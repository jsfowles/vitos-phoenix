# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :vitos_phoenix,
  ecto_repos: [VitosPhoenix.Repo]

# Configures the endpoint
config :vitos_phoenix, VitosPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "J89tpD116Qnrjje/r8MDga5OkLO3st1MmlYOnHFcxRkEhSR9ijRXZytKqIKTnK5X",
  render_errors: [view: VitosPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: VitosPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
