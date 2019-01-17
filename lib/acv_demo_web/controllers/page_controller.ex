defmodule AcvDemoWeb.PageController do
  use AcvDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
