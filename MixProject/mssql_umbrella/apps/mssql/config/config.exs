use Mix.Config

config :mssql, ecto_repos: [Mssql.Repo]

import_config "#{Mix.env}.exs"
