defmodule CardiofieldsWeb.Opts_imageControllerTest do
  use CardiofieldsWeb.ConnCase

  import Cardiofields.CanonsFixtures

  @create_attrs %{image: "some image"}
  @update_attrs %{image: "some updated image"}
  @invalid_attrs %{image: nil}

  describe "index" do
    test "lists all opts_images", %{conn: conn} do
      conn = get(conn, Routes.opts_image_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Opts images"
    end
  end

  describe "new opts_image" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.opts_image_path(conn, :new))
      assert html_response(conn, 200) =~ "New Opts image"
    end
  end

  describe "create opts_image" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.opts_image_path(conn, :create), opts_image: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.opts_image_path(conn, :show, id)

      conn = get(conn, Routes.opts_image_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Opts image"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.opts_image_path(conn, :create), opts_image: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Opts image"
    end
  end

  describe "edit opts_image" do
    setup [:create_opts_image]

    test "renders form for editing chosen opts_image", %{conn: conn, opts_image: opts_image} do
      conn = get(conn, Routes.opts_image_path(conn, :edit, opts_image))
      assert html_response(conn, 200) =~ "Edit Opts image"
    end
  end

  describe "update opts_image" do
    setup [:create_opts_image]

    test "redirects when data is valid", %{conn: conn, opts_image: opts_image} do
      conn =
        put(conn, Routes.opts_image_path(conn, :update, opts_image), opts_image: @update_attrs)

      assert redirected_to(conn) == Routes.opts_image_path(conn, :show, opts_image)

      conn = get(conn, Routes.opts_image_path(conn, :show, opts_image))
      assert html_response(conn, 200) =~ "some updated image"
    end

    test "renders errors when data is invalid", %{conn: conn, opts_image: opts_image} do
      conn =
        put(conn, Routes.opts_image_path(conn, :update, opts_image), opts_image: @invalid_attrs)

      assert html_response(conn, 200) =~ "Edit Opts image"
    end
  end

  describe "delete opts_image" do
    setup [:create_opts_image]

    test "deletes chosen opts_image", %{conn: conn, opts_image: opts_image} do
      conn = delete(conn, Routes.opts_image_path(conn, :delete, opts_image))
      assert redirected_to(conn) == Routes.opts_image_path(conn, :index)

      assert_error_sent 404, fn ->
        get(conn, Routes.opts_image_path(conn, :show, opts_image))
      end
    end
  end

  defp create_opts_image(_) do
    opts_image = opts_image_fixture()
    %{opts_image: opts_image}
  end
end
