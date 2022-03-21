defmodule DynamicSpotifyPlaylistGeneratorWeb.AuthController do
  use DynamicSpotifyPlaylistGeneratorWeb, :controller
  plug Ueberauth

  alias DynamicSpotifyPlaylistGeneratorWeb.Router.Helpers

  def callback(%{assigns: %{ueberauth_failure: fails}} = conn, _params) do

    IO.write("FAIL")
    IO.inspect(fails)
    conn
    |> put_flash(:error, "Failed to authenticate.")
    |> redirect(to: "/")
  end

  def callback(%{assigns: %{ueberauth_auth: auth}} = conn, params) do

    IO.inspect(auth)
    conn
    |> redirect(to: "/")

    # user_params = %{token: auth.credentials.token, email: auth.info.email, provider: "spotify"}
    # changeset = User.changeset(%User{}, user_params)
    # signin(conn, changeset)
  end


end
