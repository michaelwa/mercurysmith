defmodule AppAdminLocationTest do
    use ExUnit.Case

    alias AppAdmin.Location

    test "valid with all required fields" do
        params = %{ name: "asdf", lat: 3.0, long: 3.0, address1: "asdf", city: "asdf", state: "as", postalcode: "12345-9999"}
        changeset = Location.changeset(%Location{}, params)
        assert changeset.valid?
    end

    test "invalid without all required fields" do
        params = %{ lat: 3.0, long: 3.0, address1: "asdf", city: "asdf", state: "as", postalcode: "12345-9999"}
        changeset = Location.changeset(%Location{}, params)
        refute changeset.valid?

        params = %{ name: "asdf", long: 3.0, address1: "asdf", city: "asdf", state: "as", postalcode: "12345-9999"}
        changeset = Location.changeset(%Location{}, params)
        refute changeset.valid?

        params = %{ name: "asdf", lat: 3.0, address1: "asdf", city: "asdf", state: "as", postalcode: "12345-9999"}
        changeset = Location.changeset(%Location{}, params)
        refute changeset.valid?
        
        params = %{ name: "asdf", lat: 3.0, long: 3.0, city: "asdf", state: "as", postalcode: "12345-9999"}
        changeset = Location.changeset(%Location{}, params)
        refute changeset.valid?
        
        params = %{ name: "asdf", lat: 3.0, long: 3.0, address1: "asdf", state: "as", postalcode: "12345-9999"}
        changeset = Location.changeset(%Location{}, params)
        refute changeset.valid?

        params = %{ name: "asdf", lat: 3.0, long: 3.0, address1: "asdf", city: "asdf", postalcode: "12345-9999"}
        changeset = Location.changeset(%Location{}, params)
        refute changeset.valid?

        params = %{ name: "asdf", lat: 3.0, long: 3.0, address1: "asdf", city: "asdf", state: "as"}
        changeset = Location.changeset(%Location{}, params)
        refute changeset.valid?
    end

end