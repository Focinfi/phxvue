defmodule PhxvueWeb.MenuController do
  use PhxvueWeb, :controller

  alias Phxvue.Admin

  action_fallback PhxvueWeb.FallbackController

  def items(conn, _params) do
    menu_items = Admin.menu_items()
    render(conn, "items.json", items: menu_items)
  end
end
