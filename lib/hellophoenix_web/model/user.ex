defmodule HellophoenixWeb.User do
  use Ecto.Schema

  @derive {Jason.Encoder, except: [:__meta__, :password]}

  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string
    field :stooge, :string

    timestamps
  end
  
end
