defmodule Cardiofields.Repo.Migrations.AlterTableDefinitonsAddIndexingField do
  use Ecto.Migration

  def change do
   alter table(:definitions) do
    add :indexing, :string
    end
 
  end
end
