defmodule Cardiofields.CanonsTest do
  use Cardiofields.DataCase

  alias Cardiofields.Canons

  describe "opts_images" do
    alias Cardiofields.Canons.Opts_image

    import Cardiofields.CanonsFixtures

    @invalid_attrs %{image: nil}

    test "list_opts_images/0 returns all opts_images" do
      opts_image = opts_image_fixture()
      assert Canons.list_opts_images() == [opts_image]
    end

    test "get_opts_image!/1 returns the opts_image with given id" do
      opts_image = opts_image_fixture()
      assert Canons.get_opts_image!(opts_image.id) == opts_image
    end

    test "create_opts_image/1 with valid data creates a opts_image" do
      valid_attrs = %{image: "some image"}

      assert {:ok, %Opts_image{} = opts_image} = Canons.create_opts_image(valid_attrs)
      assert opts_image.image == "some image"
    end

    test "create_opts_image/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Canons.create_opts_image(@invalid_attrs)
    end

    test "update_opts_image/2 with valid data updates the opts_image" do
      opts_image = opts_image_fixture()
      update_attrs = %{image: "some updated image"}

      assert {:ok, %Opts_image{} = opts_image} =
               Canons.update_opts_image(opts_image, update_attrs)

      assert opts_image.image == "some updated image"
    end

    test "update_opts_image/2 with invalid data returns error changeset" do
      opts_image = opts_image_fixture()
      assert {:error, %Ecto.Changeset{}} = Canons.update_opts_image(opts_image, @invalid_attrs)
      assert opts_image == Canons.get_opts_image!(opts_image.id)
    end

    test "delete_opts_image/1 deletes the opts_image" do
      opts_image = opts_image_fixture()
      assert {:ok, %Opts_image{}} = Canons.delete_opts_image(opts_image)
      assert_raise Ecto.NoResultsError, fn -> Canons.get_opts_image!(opts_image.id) end
    end

    test "change_opts_image/1 returns a opts_image changeset" do
      opts_image = opts_image_fixture()
      assert %Ecto.Changeset{} = Canons.change_opts_image(opts_image)
    end
  end
end
