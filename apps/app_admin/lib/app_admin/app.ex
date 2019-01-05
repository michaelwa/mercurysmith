defmodule AppAdmin.App do
  use Ecto.Schema
  import Ecto.Changeset

  schema "Apps" do
    field(:name, :string)
    timestamps()

    has_many(:roles, AppAdmin.Role)
  end

  def changeset(app, params) do
    app
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
