defmodule Cardiofields.Canons.Definition do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  schema "definitions" do
    field(:coding_instructions, :string)
    field(:data_source, :string)
    field(:default_value, :string)
    field(:definition_id, :integer)
    field(:defs_table_id, :integer)
    field(:name, :string)
    field(:notes, :string)
    field(:ref, :string)
    field(:short_name, :string)
    field(:support_definition, :string)
    field(:table_name, :string)
    field(:target_value, :string)
    field(:title_name, :string)
    field(:usual_range, :string)
    field(:valid_range, :string)
    field(:vocabulary_en, :string)

    timestamps()
    has_many(:defs_sentences, Cardiofields.Canons.Defs_sentence, foreign_key: :definition_id)
    has_many(:defs_codes, Cardiofields.Canons.Defs_code, foreign_key: :definition_id)
    has_many(:defs_options, Cardiofields.Canons.Defs_option, foreign_key: :definition_id)
  end

  @doc false
  #  def changeset(%Definition{} = definition, attrs) do
  #    definition
  def changeset(definition, attrs) do
    definition
    |> cast(attrs, [
      :definition_id,
      :table_name,
      :name,
      :coding_instructions,
      :target_value,
      :short_name,
      :support_definition,
      :notes,
      :ref,
      :vocabulary_en,
      :title_name,
      :short_name,
      :default_value,
      :usual_range,
      :valid_range,
      :data_source,
      :defs_table_id
    ])
    |> validate_required([:name])
     # definitions_pkey (unique_constraint)
     #drop index definitions_name_index;

    #  |> unique_constraint(:name)
    #  |> foreign_key_constraint(:name)
    #  |> unique_constraint(:name, name: :definitions_pkey,
    #  message: "Opps Dublicate Field Name......")
  end

  def order_by_name(query) do
    _query = from(c in query, order_by: c.name)
  end

  #################
end