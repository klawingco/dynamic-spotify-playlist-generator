defmodule DynamicSpotifyPlaylistGeneratorWeb.PageController do
  use DynamicSpotifyPlaylistGeneratorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
