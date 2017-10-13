use Mix.Config

# Configure your database
config :mssql, Mssql.Repo,
  adapter: MssqlEcto,
  username: "sa",
  password: "",
  database: "mssql_dev",
  hostname: "localhost",
  pool_size: 10
