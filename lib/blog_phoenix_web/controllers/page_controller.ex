defmodule BlogPhoenixWeb.PageController do
  use BlogPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def hobby(_conn, _params) do
    rem(10, 3)
  end
end
