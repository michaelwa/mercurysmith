defmodule AppAdminAppTest do
  use ExUnit.Case

  alias AppAdmin.App

  test "valid with name" do
    changeset = App.changeset(%App{}, %{name: "asdf"})
    assert changeset.valid?
  end

  test "invalid without name" do
    changeset = App.changeset(%App{}, %{})
    refute changeset.valid?
  end
end
