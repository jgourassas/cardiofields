defmodule Cardiofields.Canons.Defs_option do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query
  # alias Cardiofields.Canons.Definition

  schema "defs_options" do
    field(:code, :string)
    field(:definition_id, :integer)
    field(:name, :string)
    field(:selection_definition, :string)
    field(:selection_notes, :string)
    field(:selection_text, :string)
    field(:selection_reference, :string)

    # belongs_to(:definition, Cardiofields.Canons.Definition, foreign_key: :definition_id)
    has_many(:opts_codes, Cardiofields.Canons.Opts_code, foreign_key: :defs_option_id)
    has_many(:opts_sentences, Cardiofields.Canons.Opts_sentence, foreign_key: :defs_option_id)
    has_many(:opts_images, Cardiofields.Canons.Opts_image, foreign_key: :defs_option_id)

    timestamps()
  end

  @doc false
  def changeset(defs_option, attrs) do
    defs_option
    |> cast(attrs, [
      :name,
      :code,
      :selection_text,
      :selection_definition,
      :selection_notes,
      :selection_reference
    ])
    |> validate_required([])
   # |> order_by_code()
  end

  def order_by_code(query) do
    _results = from(q in query, order_by: [asc: q.code])
    #NaturalSort.sort(["x2-y7", "x8-y8", "x2-y08", "x2-g8" ])
    #Enum.sort(["b", "aaa", "cc"])
  end
end
