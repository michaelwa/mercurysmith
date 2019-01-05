defmodule AppAdmin.Client do
  use Ecto.Schema
  import Ecto.Changeset

  schema "clients" do
    field(:name, :string)
    timestamps()

    has_many(:locations, AppAdmin.Location)
  end

  def changeset(client, params) do
    client
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
