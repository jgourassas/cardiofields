defmodule CardiofieldsWeb.Router do
  use CardiofieldsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {CardiofieldsWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CardiofieldsWeb do
    pipe_through :browser

    get "/page", PageController, :index, as: :pages
    get "/pages/:id", PageController, :show, as: :page

    get "/", PageController, :index

    post(
      "/definitions/search_instructions",
      DefinitionController,
      :search_instructions
    )

    post(
      "/definitions/search_support_definitions",
      DefinitionController,
      :search_support_definitions
    )

    post("/definitions/search_notes", DefinitionController, :search_notes)

    post(
      "/definitions/search_option_definitions",
      DefinitionController,
      :search_option_definitions
    )

    #####################
    post("/definitions/search_definitions", DefinitionController, :search_definitions)
    post("/defs_tables/search_in_tables", Defs_tableController, :search_in_tables)

    ###################

    # post("/definitions/search_definitions", DefinitionController, :search_definitions)
    # post("/defs_tables/search_in_tables", Defs_tableController, :search_in_tables)
    resources("/defs_tables", Defs_tableController)

    resources "/definitions", DefinitionController do
      resources("/defs_sentences", Defs_sentenceController)
      resources("/defs_codes", Defs_codeController)

      resources "/defs_options", Defs_optionController do
        resources("/opts_codes", Opts_codeController, only: [:index, :new, :create])
        resources("/opts_codes", Opts_codeController)
        resources("/opts_sentences", Opts_sentenceController)
        resources("/opts_images", Opts_imageController)
      end
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", CardiofieldsWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: CardiofieldsWeb.Telemetry
    end
  end

  # Enables the Swoosh mailbox preview in development.
  #
  # Note that preview only shows emails that were sent by the same
  # node running the Phoenix server.
  if Mix.env() == :dev do
    scope "/dev" do
      pipe_through :browser

      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
