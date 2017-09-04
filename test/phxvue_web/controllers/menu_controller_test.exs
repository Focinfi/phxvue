defmodule PhxvueWeb.MenuControllerTest do
  use PhxvueWeb.ConnCase

  alias Phxvue.Admin
  alias Phxvue.Admin.Menu

  @create_attrs %{items: []}
  @update_attrs %{items: []}
  @invalid_attrs %{items: nil}

  def fixture(:menu) do
    {:ok, menu} = Admin.create_menu(@create_attrs)
    menu
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all menu", %{conn: conn} do
      conn = get conn, menu_path(conn, :index)
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create menu" do
    test "renders menu when data is valid", %{conn: conn} do
      conn = post conn, menu_path(conn, :create), menu: @create_attrs
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get conn, menu_path(conn, :show, id)
      assert json_response(conn, 200)["data"] == %{
        "id" => id,
        "items" => []}
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post conn, menu_path(conn, :create), menu: @invalid_attrs
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update menu" do
    setup [:create_menu]

    test "renders menu when data is valid", %{conn: conn, menu: %Menu{id: id} = menu} do
      conn = put conn, menu_path(conn, :update, menu), menu: @update_attrs
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get conn, menu_path(conn, :show, id)
      assert json_response(conn, 200)["data"] == %{
        "id" => id,
        "items" => []}
    end

    test "renders errors when data is invalid", %{conn: conn, menu: menu} do
      conn = put conn, menu_path(conn, :update, menu), menu: @invalid_attrs
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete menu" do
    setup [:create_menu]

    test "deletes chosen menu", %{conn: conn, menu: menu} do
      conn = delete conn, menu_path(conn, :delete, menu)
      assert response(conn, 204)
      assert_error_sent 404, fn ->
        get conn, menu_path(conn, :show, menu)
      end
    end
  end

  defp create_menu(_) do
    menu = fixture(:menu)
    {:ok, menu: menu}
  end
end
