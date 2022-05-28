defmodule Cardiofields.Canons.Opts_image do
  use Arc.Ecto.Schema
  use Ecto.Schema

  import Ecto.Changeset

  schema "opts_images" do
    # field :image, :string
    field :image, Cardiofields.ImageUploader.Type
    field(:defs_option_id, :integer)
    field(:mime_type, :string)
    field(:mime_size, :string)
    field(:radlex_id, :string)
    field(:dicom_reference, :string)
    field(:dicom_size, :string)
    field(:data_responsible, :string)
    field(:data_owner, :string)
    timestamps()
  end

  @doc false
  def changeset(opts_image, attrs) do
    opts_image
    |> cast(attrs, [
      :image,
      :mime_type,
      :mime_size,
      :radlex_id,
      :dicom_reference,
      :dicom_size,
      :data_responsible,
      :data_owner
    ])
    |> cast_attachments(attrs, [:image])
    |> validate_required([])

    # |> validate_required([:image])
  end
end
