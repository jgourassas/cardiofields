defmodule CardiofieldsWeb.DefinitionController do
  use CardiofieldsWeb, :controller
  require Ecto.Changeset
  alias Cardiofields.{Canons, Canons.Definition, Repo}
  alias Cardiofields.Canons.Defs_table
  import Ecto.Query, warn: false

  plug(:scrub_params, "definition" when action in [:create, :update])

  plug(:load_defs_tables when action in [:new, :create, :edit, :update])

  def index(conn, params) do
    page =
      Definition
      |> Definition.order_by_name()
      |> Repo.paginate(params)

    render(conn, "index.html", definitions: page.entries, page: page)

  end

  def new(conn, _params) do
    changeset = Canons.change_definition(%Definition{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"definition" => definition_params}) do
    defs_table_id = Map.get(definition_params, "defs_table_id")

    changeset =
      Definition.changeset(%Definition{}, definition_params)
      |> Ecto.Changeset.put_change(
        :table_name,
        Defs_table.id_to_name(defs_table_id)
      )

    case Repo.insert(changeset) do
      {:ok, definition} ->
        conn
        |> put_flash(:info, "#{definition.name} Field  created successfully.")

        render(conn, "show.html", definition: definition)

      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
        #####################
    end

    render(conn, "new.html", changeset: changeset)
  end

  def show(conn, %{"id" => id}) do
    definition = Canons.get_definition!(id)
    render(conn, "show.html", definition: definition)
  end

  def edit(conn, %{"id" => id}) do
    definition = Canons.get_definition!(id)
    changeset = Canons.change_definition(definition)
    render(conn, "edit.html", definition: definition, changeset: changeset)
  end

  def update(conn, %{"id" => id, "definition" => definition_params}) do
    defs_table_id = Map.get(definition_params, "defs_table_id")
    definition = Repo.get!(Definition, id)

    changeset =
      Definition.changeset(definition, definition_params)
      |> Ecto.Changeset.put_change(
        :table_name,
        Canons.Defs_table.id_to_name(defs_table_id)
      )

    case Repo.update(changeset) do
      {:ok, definition} ->
        conn
        |> put_flash(:info, "Element-Field updated successfully.")
        |> redirect(to: Routes.definition_path(conn, :show, definition))

      {:error, changeset} ->
        render(conn, "edit.html", definition: definition, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    definition = Canons.get_definition!(id)
    {:ok, _definition} = Canons.delete_definition(definition)

    conn
    |> put_flash(:info, "Field / Definition deleted successfully.")
    |> redirect(to: Routes.definition_path(conn, :index))
  end

  #################################
  ################################

  def search_support_definitions(conn, %{"input" => input}) do
    input = String.trim(input)
    results = Canons.search_a_support_definition(input)
    json(conn, results)
  end

  #################################

  def search_notes(conn, %{"input" => input}) do
    input = String.trim(input)
    results = Canons.search_a_note(input)
    json(conn, results)
  end

  def search_instructions(conn, %{"input" => input, "params" => params}) do
    input = String.trim(input)

    page =
      _results =
      Cardiofields.Canons.search_an_instruction(input)
      |> Repo.paginate(page: params["page"], page_size: 260)

    render(conn, "index.html", definitions: page.entries, page: page)
  end

  #################### 3
  def search_instructions_2(conn, %{"input" => input}) do
    input = String.trim(input)
    results = Cardiofields.Canons.search_an_instruction(input)
    json(conn, results)
  end

  ##########################################

  ########################
  def search_option_definitions(conn, %{"input" => input}) do
    input = String.trim(input)

    if input !== "" do
      results = Canons.search_an_option_definition(input)
      json(conn, results)
    else
      not_applicable = "Not Applicable"
      json(conn, not_applicable)
    end
  end

  ######################
  defp load_defs_tables(conn, _) do
    query =
      Defs_table
      |> Defs_table.alphabetical()
      |> Defs_table.names_and_ids()

    defs_tables = Repo.all(query)
    assign(conn, :defs_tables, defs_tables)
  end

  ###################################

  #################

  def search_definitions(
        conn,
        %{"search_definitions" => %{"query" => query, "selection" => selection}} = params
      ) do
    trim_query = String.trim(query)


   page =
     Canons.search_a_definition(trim_query, selection)
      |> Repo.paginate(page: params["page"], page_size: 5)
        render(conn, "index.html", definitions: page.entries, page: page)
  end
############################

def search_definitions_1(
  conn,
  %{"search_definitions" => %{"query" => query, "selection" => selection}} = params
) do


  trim_query = String.trim(query)
  paginate_options = %{page: 1, per_page: 5}

page =
Canons.search_a_definition(trim_query, selection, paginate_options)
#|> Repo.paginate(page: params["page"], per_page: 10)
|> Repo.paginate(paginate_options)

render(conn, "index.html", definitions: page.entries, page: page)
end
  ## end of search_definitions################3

  ######### end of controller#########
end
