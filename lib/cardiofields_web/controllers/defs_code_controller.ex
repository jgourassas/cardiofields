defmodule CardiofieldsWeb.Defs_codeController do
  use CardiofieldsWeb, :controller
  import CardiofieldsPlug

  alias Cardiofields.Canons
  alias Cardiofields.Canons.Defs_code
  plug(:assign_definition)

  def index(conn, _params) do
    # defs_codes = Cardiofields.Repo.all(Ecto.assoc(conn.assigns[:definition], :defs_codes))
    defs_codes = Canons.list_defs_codes(conn)
    render(conn, :index, defs_codes: defs_codes)
  end

  @spec new(Plug.Conn.t(), any) :: Plug.Conn.t()
  def new(conn, _params) do
    changeset = Canons.change_defs_code(%Defs_code{})
    render(conn, "new.html", changeset: changeset)
    # render(conn, "show.html", chngeset: changeset)
  end

  def create(conn, %{"defs_code" => defs_code_params}) do
    ##################

    changeset =
      conn.assigns[:definition]
      |> Ecto.build_assoc(:defs_codes)
      |> Defs_code.changeset(defs_code_params)

    case Cardiofields.Repo.insert(changeset) do
      {:ok, defs_code} ->
        defs_codes = Cardiofields.Repo.all(Ecto.assoc(conn.assigns[:definition], :defs_codes))
        render(conn, :index, defs_codes: defs_codes)

        conn
        |> put_flash(:info, "Field Codes created successfully.")
        |> redirect(
          to:
            Routes.definition_defs_code_path(
              conn,
              :show,
              conn.assigns[:definition],
              defs_code.id
            )
        )

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end

    ##################
  end

  def show(conn, %{"id" => id}) do
    defs_code = Canons.get_defs_code!(id)
    render(conn, "show.html", defs_code: defs_code)
  end

  def edit(conn, %{"id" => id}) do
    defs_code = Canons.get_defs_code!(id)
    changeset = Canons.change_defs_code(defs_code)
    render(conn, "edit.html", defs_code: defs_code, changeset: changeset)
  end

  def update(conn, %{"id" => id, "defs_code" => defs_code_params}) do
    defs_code = Cardiofields.Canons.get_defs_code!(id)

    case Canons.update_defs_code(defs_code, defs_code_params) do
      {:ok, _defs_code} ->
        conn
        |> put_flash(:info, " Field - Definition Codes updated successfully.")
        |> redirect(
          to: Routes.definition_defs_code_path(conn, :show, conn.assigns[:definition], id)
        )

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", defs_code: defs_code, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    defs_code = Canons.get_defs_code!(id)
    {:ok, _defs_code} = Canons.delete_defs_code(defs_code)

    conn
    |> put_flash(:info, "Defs code deleted successfully.")
    |> redirect(to: Routes.definition_defs_code_path(conn, :index, conn.assigns[:definition]))
  end

  ##############

  ###############
end
