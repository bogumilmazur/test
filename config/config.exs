# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :blog_phoenix,
  ecto_repos: [BlogPhoenix.Repo]

# Configures the endpoint
config :blog_phoenix, BlogPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BJebIVhk9b7BieoTo6XxLjCbyIBB0oLgqYoNZga8nw0lP6lJyNJxcg0JJMYXEamA",
  render_errors: [view: BlogPhoenixWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BlogPhoenix.PubSub,
  live_view: [signing_salt: "IWWjUcJo"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
