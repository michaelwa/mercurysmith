defmodule AppAdmin.CardApp do
  use Ecto.Schema
  import Ecto.Changeset

  schema "card_apps" do
    field(:name, :string)
    timestamps()

    has_many(:roles, AppAdmin.Role)
    has_many(:location_apps, AppAdmin.LocationApp)
  end

  @required_fields ~w(name)a
  @optional_fields ~w()a

  def changeset(card_app, params) do
    card_app
    |> cast(params, @required_fields, @optional_fields)
    |> validate_required(@required_fields)
  end
end
