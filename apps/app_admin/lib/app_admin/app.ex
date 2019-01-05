defmodule AppAdmin.App do
  use Ecto.Schema
  import Ecto.Changeset

  schema "Apps" do
    field(:name, :string)
    timestamps()

    has_many(:roles, AppAdmin.Role)
    has_many(:locations, AppAdmin.LocationApp)
  end

  @required_fields ~w(name)a
  @optional_fields ~w()a

  def changeset(app, params) do
    app
    |> cast(params, @required_fields, @optional_fields)
    |> validate_required(@required_fields)
  end
end
