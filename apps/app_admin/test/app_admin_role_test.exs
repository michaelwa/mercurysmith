defmodule AppAdminRoleTest do
  use ExUnit.Case

  alias AppAdmin.Role

  test "valid with name" do
    changeset = Role.changeset(%Role{}, %{name: "asdf"})
    assert changeset.valid?
  end

  test "invalid wiitout name" do
    changeset = Role.changeset(%Role{}, %{})
    refute changeset.valid?
  end
end
