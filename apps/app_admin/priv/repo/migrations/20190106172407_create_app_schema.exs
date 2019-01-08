defmodule AppAdmin.Repo.Migrations.CreateAppSchema do
  use Ecto.Migration

  def change do
    execute "CREATE SCHEMA app"
  end
end