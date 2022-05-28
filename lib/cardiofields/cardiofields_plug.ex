defmodule CardiofieldsPlug do
  use Plug.Builder

  alias Cardiofields.Repo
  # plug(:assign_languages)
  plug(:assign_definition)

  def assign_definition(conn, _opts) do
    case conn.params do
      %{"definition_id" => definition_id} ->
        case Cardiofields.Repo.get(Cardiofields.Canons.Definition, definition_id) do
          # nil -> invalid_user(conn)
          definition ->
            assign(conn, :definition, definition)
        end

      _ ->
        conn
    end
  end

  #################

  def assign_languages(conn, _) do
    case conn.params do
      %{"language_id" => language_id} ->
        case Repo.get(Language, language_id) do
          languages ->
            assign(conn, :languages, languages)
        end

      _ ->
        conn
    end
  end

  ###################
end

# module
