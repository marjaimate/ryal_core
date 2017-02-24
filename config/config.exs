use Mix.Config

config :ryal_core, ecto_repos: [Ryal.Core.Repo]

config :ryal_core, Ryal.Core.Repo,
  adapter: Ecto.Adapters.Postgres,
  pool: Ecto.Adapters.SQL.Sandbox,
  database: "ryal_#{Mix.env}",
  username: System.get_env("RYAL_DB_USER") || System.get_env("USER")