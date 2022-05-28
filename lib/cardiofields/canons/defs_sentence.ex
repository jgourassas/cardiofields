defmodule Cardiofields.Canons.Defs_sentence do
  use Ecto.Schema
  import Ecto.Changeset

  schema "defs_sentences" do
    field(:definition_id, :integer)
    field(:language, :string)
    field(:note, :string)
    field(:sentence, :string)

    timestamps()
  end

  @doc false
  def changeset(defs_sentence, attrs) do
    defs_sentence
    |> cast(attrs, [:language, :sentence, :note, :definition_id])
    |> validate_required([])
  end
end
