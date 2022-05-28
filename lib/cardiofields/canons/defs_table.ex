defmodule Cardiofields.Canons.Defs_table do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query
  alias Cardiofields.Canons.Definition, as: Definition
  alias Cardiofields.Canons.Defs_table

  # alias Cardiofields.Repo

  schema "defs_tables" do
    field(:cda_xml, :string)
    field(:code, :string)
    field(:code_system, :string)
    field(:code_system_name, :string)
    field(:display_name, :string)
    field(:name, :string)
    field(:note, :string)
    field(:template_id, :string)
    timestamps()
    has_many(:definitions, Definition, foreign_key: :defs_table_id)
    # many_to_many :definitions, Definition, join_through: "relation_defs_tables"
  end

  @doc false
  def changeset(defs_table, attrs) do
    defs_table
    |> cast(attrs, [
      :cda_xml,
      :code,
      :code_system,
      :code_system_name,
      :display_name,
      :name,
      :note,
      :template_id
    ])
    |> validate_required([:name])

    # |> validate_required([:cda_xml, :code, :code_system, :code_system_name, :display_name, :name, :note, :template_id])
  end

  @spec alphabetical(any) :: Ecto.Query.t()
  def alphabetical(query) do
    from(c in query, order_by: c.name)
  end

  def names_and_ids(query) do
    from(c in query, select: {c.name, c.id})
  end

  @spec id_to_name(any) :: any
  def id_to_name(defs_table_id) do
    Cardiofields.Repo.one(from(t in Defs_table, where: t.id == ^defs_table_id, select: t.name))
  end

  def count_definitions(query) do
    from(
      p in query,
      group_by: p.id,
      left_join: c in assoc(p, :definitions),
      select: {p, count(c.id)}
    )
  end

  ####################
  ##################
end
