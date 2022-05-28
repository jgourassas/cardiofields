defmodule CardiofieldsWeb.Defs_tableController do
  use CardiofieldsWeb, :controller

  alias Cardiofields.Canons
  alias Cardiofields.Canons.Defs_table
  alias Cardiofields.Repo
  import Ecto.Query

  plug(:scrub_params, "defs_table" when action in [:create, :update])

  def index(conn, params) do
    page =
      Defs_table
      |> order_by(asc: :name)
      |> Defs_table.count_definitions()
      |> Repo.paginate(params)

    render(conn, "index.html", defs_tables: page.entries, page: page)

    # defs_tables = Canons.list_defs_tables()
    # render(conn, "index.html", defs_tables: defs_tables)
  end

  def new(conn, _params) do
    changeset = Canons.change_defs_table(%Defs_table{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"defs_table" => defs_table_params}) do
    case Canons.create_defs_table(defs_table_params) do
      {:ok, defs_table} ->
        conn
        |> put_flash(:info, "Defs table created successfully.")
        |> redirect(to: Routes.defs_table_path(conn, :show, defs_table))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    defs_table = Canons.get_defs_table!(id)
    render(conn, "show.html", defs_table: defs_table)
  end

  def edit(conn, %{"id" => id}) do
    defs_table = Canons.get_defs_table!(id)
    changeset = Canons.change_defs_table(defs_table)
    render(conn, "edit.html", defs_table: defs_table, changeset: changeset)
  end

  def update(conn, %{"id" => id, "defs_table" => defs_table_params}) do
    defs_table = Canons.get_defs_table!(id)

    case Canons.update_defs_table(defs_table, defs_table_params) do
      {:ok, defs_table} ->
        conn
        |> put_flash(:info, "Defs table updated successfully.")
        |> redirect(to: Routes.defs_table_path(conn, :show, defs_table))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", defs_table: defs_table, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    defs_table = Canons.get_defs_table!(id)
    {:ok, _defs_table} = Canons.delete_defs_table(defs_table)

    conn
    |> put_flash(:info, "Defs table deleted successfully.")
    |> redirect(to: Routes.defs_table_path(conn, :index))
  end

  ###########################
  def search_in_tables(conn, %{"search_in_tables" => %{"query" => query}} = params) do
    query = String.trim(query)

    page =
      Canons.search_in_table(query)
      |> order_by(asc: :name)
      |> Defs_table.count_definitions()
      |> Repo.paginate(params)

    render(conn, "index.html", defs_tables: page.entries, page: page)
  end

  ############################
end
