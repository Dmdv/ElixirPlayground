defmodule Mssql.Application do
  @moduledoc """
  The Mssql Application Service.

  The mssql system business domain lives in this application.

  Exposes API to clients such as the `MssqlWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Mssql.Repo, []),
    ], strategy: :one_for_one, name: Mssql.Supervisor)
  end
end
