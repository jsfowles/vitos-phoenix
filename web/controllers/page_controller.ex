defmodule VitosPhoenix.PageController do
  use VitosPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
