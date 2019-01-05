defmodule AppAdminClientTest do
  use ExUnit.Case

  alias AppAdmin.Client

  test "valid with name" do
    changeset = Client.changeset(%Client{}, %{name: "asdf"})
    assert changeset.valid?
  end

  test "invalid without name" do
    changeset = Client.changeset(%Client{}, %{})
    refute changeset.valid?
  end
end
