defmodule CicadaWeb.UserController do
  def index(conn, _params) do
    conn
      new_user = Cicada.User.changeset_new_user(:mongo, "users", %{}, changeset_new_user, [return_document :after, upsert: :true])
      Logger.info("created new user #{inspect(user)}")
  end
end