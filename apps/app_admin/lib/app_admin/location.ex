defmodule AppAdmin.Location do
  use Ecto.Schema

  import Ecto.Changeset

  schema "locations" do
    field(:name, :string)
    field(:lat, :float)
    field(:long, :float)
    field(:address1, :string)
    field(:address2, :string)
    field(:city, :string)
    field(:state, :string)
    field(:postalcode, :string)

    belongs_to(:client, AppAdmin.Client)
    has_many(:locations, AppAdmin.LocationApp)
  end

  @required_fields ~w(name lat long address1 city state postalcode)a
  @optional_fields ~w(address2)a

  def changeset(location, params) do
    location
    |> cast(params, @required_fields, @optional_fields)
    |> validate_required(@required_fields)
  end
end
