defmodule AppAdminCardAppTest do
  use ExUnit.Case

  alias AppAdmin.CardApp

  test "valid with name" do
    changeset = CardApp.changeset(%CardApp{}, %{name: "asdf"})
    assert changeset.valid?
  end

  test "invalid without name" do
    changeset = CardApp.changeset(%CardApp{}, %{})
    refute changeset.valid?
  end
end
