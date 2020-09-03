defmodule BlogPhoenixWeb.BogumilController do
  use BlogPhoenixWeb, :controller

  def index(conn, _params) do

    %BlogPhoenix.User{c: "s1s", name: "k85", email: "e1eee"} |> BlogPhoenix.Repo.insert
    render(conn, "index.html")


  end
end
