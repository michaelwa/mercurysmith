defmodule AppAdmin.Role do
  use Ecto.Schema
  import Ecto.Changeset

  schema "roles" do
    field(:name, :string)
    timestamps()

    belongs_to(:card_app, AppAdmin.CardApp)
  end

  @required_fields ~w(name)a
  @optional_fields ~w()

  def changeset(role, params) do
    role
    |> cast(params, @required_fields, @optional_fields)
    |> validate_required(@required_fields)
    |> assoc_constraint(:card_app)
  end
end
