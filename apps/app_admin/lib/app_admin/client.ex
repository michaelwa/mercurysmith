defmodule AppAdmin.Client do
  use Ecto.Schema
  import Ecto.Changeset

  schema "clients" do
    field(:name, :string)
    timestamps()

    has_many(:locations, AppAdmin.Location)
  end

  @required_fields ~w(name)a
  @optional_fields ~w()

  def changeset(client, params) do
    client
    |> cast(params, @required_fields, @optional_fields)
    |> validate_required(@required_fields)
  end
end
