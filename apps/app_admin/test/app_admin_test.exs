defmodule AppAdminTest do
  use ExUnit.Case
  doctest AppAdmin

  test "greets the world" do
    assert AppAdmin.hello() == :world
  end
end
