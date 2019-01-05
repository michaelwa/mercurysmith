defmodule AppAdmin.LocationApp do
  use Ecto.Schema

  schema "locations_apps" do
    field(:location_id, :string)
    field(:app_id, :string)
    belongs_to(:locations, AppAdminLocation)
    belongs_to(:apps, AppAdmin.App)
  end
end
