defmodule Tiktak.GameController do
  use Tiktak.Web, :controller

  def move(conn, _params) do
    render conn, "move.html"
  end
end
