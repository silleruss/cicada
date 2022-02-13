defmodule CicadaWeb.PageController do
  use CicadaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
