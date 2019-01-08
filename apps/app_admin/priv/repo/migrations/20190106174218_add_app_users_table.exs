defmodule AppAdmin.Repo.Migrations.AddAppUsersTable do
  use Ecto.Migration

  def change do
    create table(:users, prefix: :app) do 
      add :user_id, :uuid, null: false
      add :first_name, :string, null: false
      add :last_name, :string, null: false
      add :middle_name, :string, null: true
      add :email, :string, null: false
      add :phone_number, :string, null: false
      
      timestamps()
    end

    create index("users", :user_id, unique: true, prefix: :app)
  end
end