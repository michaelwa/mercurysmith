defmodule AppAdmin.Repo.Migrations.AddAppCardAppTable do
  use Ecto.Migration

  def change do
    create table(:card_apps, prefix: :app) do 
      add :card_app_id, :uuid, null: false
      add :name, :string, null: false
      
      timestamps()
    end

    create index("card_apps", :card_app_id, unique: true, prefix: :app)

  end
end
