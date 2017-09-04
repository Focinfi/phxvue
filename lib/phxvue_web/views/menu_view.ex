defmodule PhxvueWeb.MenuView do
  use PhxvueWeb, :view

  def render("items.json", %{items: items}) do
    %{data: items}
  end
end
