defmodule AppAdmin.LocationApp do
    use Ecto.Schema

    schema "locations_apps" do
        belongs_to :locations, AppAdminLocation
        belongs_to :apps, AppAdmin.App
    end
end