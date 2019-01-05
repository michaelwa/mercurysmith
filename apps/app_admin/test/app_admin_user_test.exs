defmodule AppAdminUserTest do
    use ExUnit.Case

    alias AppAdmin.User

    test "valid with required parameters" do
        params = %{ first_name: "asdf", last_name: "asdf", email: "asdf@asdf.com", phone_number: "+12061234567"}
        changeset = User.changeset(%User{}, params)
        assert changeset.valid?
    end

    test "invalid without required fields" do
        params = %{ last_name: "asdf", email: "asdf@asdf.com", phone_number: "+1234567890"}
        changeset = User.changeset(%User{}, params)
        refute changeset.valid?

        params = %{ first_name: "asdf", email: "asdf@asdf.com", phone_number: "+1234567890"}
        changeset = User.changeset(%User{}, params)
        refute changeset.valid?

        params = %{ first_name: "asdf", last_name: "asdf", phone_number: "+1234567890"}
        changeset = User.changeset(%User{}, params)
        refute changeset.valid?

        params = %{ first_name: "asdf", last_name: "asdf", email: "asdf@asdf.com" }
        changeset = User.changeset(%User{}, params)
        refute changeset.valid?        
    end

    test "invalid with improper email format" do
        params = %{ first_name: "asdf", last_name: "asdf", email: "asd", phone_number: "+1234567890"}
        changeset = User.changeset(%User{}, params)
        refute changeset.valid?

        params = %{ first_name: "asdf", last_name: "asdf", email: "asdf.com", phone_number: "+1234567890"}
        changeset = User.changeset(%User{}, params)
        refute changeset.valid?

        params = %{ first_name: "asdf", last_name: "asdf", email: "@", phone_number: "+1234567890"}
        changeset = User.changeset(%User{}, params)
        refute changeset.valid?
    end

    test "invalid with improper phone format" do
        params = %{ first_name: "asdf", last_name: "asdf", email: "asdf@asdf.com", phone_number: "+21061234567"}
        changeset = User.changeset(%User{}, params)
        refute changeset.valid?        

        params = %{ first_name: "asdf", last_name: "asdf", email: "asdf@asdf.com", phone_number: "+1206123456"}
        changeset = User.changeset(%User{}, params)
        refute changeset.valid?        

        params = %{ first_name: "asdf", last_name: "asdf", email: "asdf@asdf.com", phone_number: "+1206123456744"}
        changeset = User.changeset(%User{}, params)
        refute changeset.valid?        

        params = %{ first_name: "asdf", last_name: "asdf", email: "asdf@asdf.com", phone_number: "+120612b4567"}
        changeset = User.changeset(%User{}, params)
        refute changeset.valid?        
    end
end