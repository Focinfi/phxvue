# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phxvue,
  ecto_repos: [Phxvue.Repo]

# Configures the endpoint
config :phxvue, PhxvueWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rIjEQNvImM7FRljVZfEvGPRjy/1yx7eWoUC7RGMsm9CDqJHJzfYVoU+6sLgsQ39M",
  render_errors: [view: PhxvueWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phxvue.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
