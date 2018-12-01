defmodule GuestWeb.PageController do
  use GuestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
