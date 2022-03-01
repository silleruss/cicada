defmodule CicadaWeb.PageController do
  use CicadaWeb, :controller

  def index(conn, _params) do
    conn
      |> Plug.Conn.put_session("session", "test_value")
      |> render("index.html")
  end

  def health(conn, _params) do
    conn
      # |> Plug.Conn.get_session(:test_value)
      |> render("health.html")
  end

  def now(conn, _params) do
    now = :calendar.local_time() |> NaiveDateTime.from_erl! |> NaiveDateTime.to_string
    render(conn, "now.html", now: now)
  end

  def calc(conn,%{"a" => valueA , "b" => valueB}) do
    sumValue = String.to_integer(valueA) + String.to_integer(valueB)
    json conn, %{result: :ok, sum: sumValue}
  end
  def calc(conn, _param) do
    json conn, %{result: :error}
  end

  def res(conn, %{"id" => id}) do
    render(conn, "res.html", [id: id])
  end

  def greeting(conn, %{"name" => name}) do
    conn
      |> assign(:name, name)
      |> render("greeting.html")
  end

end
