defmodule AppAdmin.CardApp do
  use Ecto.Schema
  import Ecto.Changeset

  schema "card_apps" do
    field(:card_app_id, Ecto.UUID)
    field(:name, :string)

    timestamps()
  end

  @required_fields ~w(name)a
  @optional_fields ~w()a

  def changeset(card_app, params) do
    card_app
    |> cast(params, @required_fields, @optional_fields)
    |> validate_required(@required_fields)
  end

  def new(card_app, params) do
    card_app
    |> cast(params, @required_fields, @optional_fields)
    |> validate_required(@required_fields)
    |> Ecto.Changeset.put_change(:card_app_id, Ecto.UUID.generate())
  end
end
