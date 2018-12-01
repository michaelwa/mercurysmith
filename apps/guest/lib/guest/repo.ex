defmodule Guest.Repo do
  use Ecto.Repo,
    otp_app: :guest,
    adapter: Ecto.Adapters.Postgres
end
