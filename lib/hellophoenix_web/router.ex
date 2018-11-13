defmodule HellophoenixWeb.Router do
  use HellophoenixWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HellophoenixWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", HellophoenixWeb do
    pipe_through :api

    scope("/v1") do

      scope("/users") do
	get("/", UsersController, :index)
	get("/:id", UsersController, :show)
      end
      
    end
    
   end
end
