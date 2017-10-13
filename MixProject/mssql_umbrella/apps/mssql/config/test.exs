use Mix.Config

# Configure your database
config :mssql, Mssql.Repo,
  adapter: MssqlEcto,
  username: "sa",
  password: "",
  database: "mssql_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
