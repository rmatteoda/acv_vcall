defmodule AcvDemoWeb.Router do
  use AcvDemoWeb, :router

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

  scope "/", AcvDemoWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/acv_vcall", AcvVcallController, :index
    get "/acv_vcall/:messenger", AcvVcallController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", AcvDemoWeb do
  #   pipe_through :api
  # end
end
