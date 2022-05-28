defmodule CardiofieldsWeb.Defs_optionController do
  use CardiofieldsWeb, :controller
  import CardiofieldsPlug

  alias Cardiofields.Canons
  alias Cardiofields.Canons.Defs_option
  plug(:assign_definition)

  def index(conn, _params) do
    # defs_options = Canons.list_defs_options(conn)
    # render(conn, :index, defs_options: defs_options)
    defs_options =
      Cardiofields.Repo.all(
        Ecto.assoc(conn.assigns[:definition], :defs_options)
        |> Defs_option.order_by_code()
        # |> DefsOption.order_by_name()
      )

    render(conn, :index, defs_options: defs_options)
  end

  def new(conn, _params) do
    changeset = Canons.change_defs_option(%Defs_option{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"defs_option" => defs_option_params}) do
    ##################
    _changeset =
      conn.assigns[:definition]
      |> Ecto.build_assoc(:defs_options)
      |> Defs_option.changeset(defs_option_params)

    #########################
    definition_id_str = conn.params["definition_id"]
    definition_id = String.to_integer(definition_id_str)

    changeset =
      Defs_option.changeset(%Defs_option{}, defs_option_params)
      |> Ecto.Changeset.put_change(
        :definition_id,
        definition_id
      )

    ###################

    case Cardiofields.Repo.insert(changeset) do
      {:ok, defs_option} ->
        defs_options = Cardiofields.Repo.all(Ecto.assoc(conn.assigns[:definition], :defs_options))
        render(conn, :index, defs_options: defs_options)
        # render(conn, :show, defs_options: defs_options)

        conn
        |> put_flash(:info, "Field Pick-List for the Report created successfully.")
        |> redirect(
          to:
            Routes.definition_defs_option_path(
              conn,
              :show,
              conn.assigns[:definition],
              defs_option.id
            )
        )

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    defs_option = Canons.get_defs_option!(id)
    render(conn, "show.html", defs_option: defs_option)
  end

  def edit(conn, %{"id" => id}) do
    defs_option = Canons.get_defs_option!(id)
    changeset = Canons.change_defs_option(defs_option)
    render(conn, "edit.html", defs_option: defs_option, changeset: changeset)
  end

  def update(conn, %{"id" => id, "defs_option" => defs_option_params}) do
    defs_option = Cardiofields.Canons.get_defs_option!(id)

    case Canons.update_defs_option(defs_option, defs_option_params) do
      {:ok, _defs_option} ->
        conn
        |> put_flash(:info, " Field Pick-Lists updated successfully.")
        |> redirect(
          to: Routes.definition_defs_option_path(conn, :show, conn.assigns[:definition], id)
        )

        #########################

        definition_id_str = conn.params["definition_id"]
        definition_id = String.to_integer(definition_id_str)

        _changeset =
          Defs_option.changeset(%Defs_option{}, defs_option_params)
          |> Ecto.Changeset.put_change(
            :definition_id,
            definition_id
          )

      ###################

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", defs_option: defs_option, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    defs_option = Canons.get_defs_option!(id)
    {:ok, _defs_option} = Canons.delete_defs_option(defs_option)

    conn
    |> put_flash(:info, "Definition  Pick-list Item  deleted successfully.")
    |> redirect(to: Routes.definition_defs_option_path(conn, :index, conn.assigns[:definition]))

    ############# 3
  end

  ###############
end
