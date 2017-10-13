defmodule MssqlWeb.PageController do
  use MssqlWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
