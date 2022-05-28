defmodule Cardiofields.CanonsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Cardiofields.Canons` context.
  """

  @doc """
  Generate a opts_image.
  """
  def opts_image_fixture(attrs \\ %{}) do
    {:ok, opts_image} =
      attrs
      |> Enum.into(%{
        image: "some image"
      })
      |> Cardiofields.Canons.create_opts_image()

    opts_image
  end
end
