defmodule Cicada.Repo do
  use Ecto.Repo,
    otp_app: :cicada,
    # TODO: set a database
    adapter: Ecto.Adapters.Postgres
end
