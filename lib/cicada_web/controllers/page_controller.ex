defmodule CicadaWeb.PageController do
  use CicadaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def health(conn, _params) do
    render(conn, "health.html")
  end

  def now(conn, _params) do
    now = :calendar.local_time() |> NaiveDateTime.from_erl! |> NaiveDateTime.to_string
    render(conn, "now.html", now: now)
  end

  def calc(conn,%{"a" => valueA , "b" => valueB}) do
    sumValue = String.to_integer(valueA) + String.to_integer(valueB)
    json conn, %{result: :ok, sum: sumValue}
  end

  def calc(conn,_param) do
    json conn, %{result: :error}
  end
end
