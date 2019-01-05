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
  end

  def changeset(location, params) do
    location
    |> cast(params, [:name, :lat, :long, :address1, :address2, :city, :state, :postalcode])
    |> validate_required([:name, :lat, :long, :address1, :city, :state, :postalcode])
  end
end
