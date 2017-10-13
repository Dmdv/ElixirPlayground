# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mssql_web,
  namespace: MssqlWeb,
  ecto_repos: [Mssql.Repo]

# Configures the endpoint
config :mssql_web, MssqlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Sn9P93cnpWXZgc41e27uJKyr69Ob5NCZRioEZf5p+90T3Upch0a3iESk+WgCXJhK",
  render_errors: [view: MssqlWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MssqlWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :mssql_web, :generators,
  context_app: :mssql

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
