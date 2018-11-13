defmodule HellophoenixWeb.UsersController do
  use HellophoenixWeb, :controller
  
  def index(conn, _params) do
    users = Hellophoenix.Repo.all(HellophoenixWeb.User)
    
    json(conn, users)
  end

  def show(conn, %{"id" => id}) do
    user = Hellophoenix.Repo.get(HellophoenixWeb.User, String.to_integer(id))

    json(conn, user)
  end
end
