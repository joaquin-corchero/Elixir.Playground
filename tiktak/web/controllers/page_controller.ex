defmodule Tiktak.PageController do
  use Tiktak.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
