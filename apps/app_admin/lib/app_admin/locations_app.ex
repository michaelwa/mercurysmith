defmodule AppAdmin.LocationsApp do
  use Ecto.Schema

  schema "locations_apps" do
    field(:location_id, :string)
    field(:app_id, :string)
    belongs_to(:locations, AppAdmin.Location)
    belongs_to(:card_apps, AppAdmin.CardApp)
  end
end
