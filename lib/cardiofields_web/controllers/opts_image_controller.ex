defmodule CardiofieldsWeb.Opts_imageController do
  use CardiofieldsWeb, :controller

  alias Cardiofields.Canons
  alias Cardiofields.Canons.Opts_image
  alias Cardiofields.Repo
  import CardiofieldsPlug

  plug(:assign_defs_option)
  plug(:assign_definition)
  plug(:assign_all_defs_options)
  # plug(:load_defs_codes)
  # plug(:load_languages)

  plug(:scrub_params, "opts_image" when action in [:create, :update])

  def index(conn, _params) do
    opts_images = Canons.list_opts_images(conn)
    render(conn, "index.html", opts_images: opts_images)
  end

  ##################################
  @spec new(Plug.Conn.t(), any) :: Plug.Conn.t()
  def new(conn, _params) do
    changeset = Canons.change_opts_image(%Opts_image{})
    render(conn, "new.html", changeset: changeset)
  end

  ###########################
  def create(conn, %{"opts_image" => opts_image_params}) do
    changeset =
      conn.assigns[:defs_option]
      |> Ecto.build_assoc(:opts_images)
      |> Opts_image.changeset(opts_image_params)

    case Repo.insert(changeset) do
      {:ok, _opts_image} ->
        conn
        |> put_flash(:info, "Option Image created successfully.")
        |> redirect(
          to:
            Routes.definition_defs_option_opts_image_path(
              conn,
              :index,
              conn.assigns[:definition],
              conn.assigns[:defs_option]
            )
        )

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  #
  def show(conn, %{"id" => id}) do
    opts_image = Canons.get_opts_image!(id)
    render(conn, "show.html", opts_image: opts_image)
  end

  def edit(conn, %{"id" => id}) do
    opts_image = Canons.get_opts_image!(id)
    changeset = Canons.change_opts_image(opts_image)
    render(conn, "edit.html", opts_image: opts_image, changeset: changeset)
  end

  def update(conn, %{"id" => id, "opts_image" => opts_image_params}) do
    opts_image = Canons.get_opts_image!(id)

    case Canons.update_opts_image(opts_image, opts_image_params) do
      {:ok, opts_image} ->
        conn
        |> put_flash(:info, "Options image updated successfully.")
        |> redirect(
          to:
            Routes.definition_defs_option_opts_image_path(
              conn,
              :index,
              conn.assigns[:definition],
              conn.assigns[:defs_option]
            )
        )

      # |> redirect(to: Routes.definition_defs_option_opts_image_path(conn, :show, opts_image))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", opts_image: opts_image, changeset: changeset)
    end
  end

  defp assign_defs_option(conn, _opts) do
    case conn.params do
      %{"defs_option_id" => defs_option_id} ->
        case Repo.get(Cardiofields.Canons.Defs_option, defs_option_id) do
          # nil -> invalid_user(conn)
          defs_option ->
            assign(conn, :defs_option, defs_option)
        end

      _ ->
        conn
    end
  end

  ####################
  defp assign_all_defs_options(conn, _opts) do
    case conn.params do
      %{"definition_id" => definition_id} ->
        query = Canons.all_defs_options(definition_id)
        all_defs_options = Repo.all(query)
        assign(conn, :all_defs_options, all_defs_options)

      _ ->
        conn
    end
  end

  #####################
  def delete(conn, %{"id" => id}) do
    opts_image = Canons.get_opts_image!(id)
    {:ok, _opts_image} = Canons.delete_opts_image(opts_image)

    conn
    |> put_flash(:info, "Opts image deleted successfully.")
    |> redirect(
      to:
        Routes.definition_defs_option_opts_image_path(
          conn,
          :index,
          conn.assigns[:definition],
          conn.assigns[:defs_option]
        )
    )

    # |> redirect(to: Routes.opts_image_path(conn, :index))
  end
end
