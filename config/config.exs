# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :cardiofields,
  ecto_repos: [Cardiofields.Repo]

config :dart_sass,
  version: "1.36.0",
  default: [
    args: ~w(--load-path=../deps/bulma css:../priv/static/assets),
    cd: Path.expand("../assets", __DIR__)
  ]

# Configures the endpoint
config :cardiofields, CardiofieldsWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: CardiofieldsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Cardiofields.PubSub,
  live_view: [signing_salt: "Kx0vTQKp"]
  
  #config :absinthe_extra,
  #endpoint: CardiofieldsWeb.Endpoint,
  #path: "/graphql",
  #complexity: 5,
  #schema: CardiofieldsWeb.Schema


  # Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :cardiofields, Cardiofields.Mailer, adapter: Swoosh.Adapters.Local

# Swoosh API client is needed for adapters other than SMTP.
config :swoosh, :api_client, false

# Configure esbuild (the version is required)
#config :esbuild,
#  version: "0.14.29",
#  default: [
#    args:
#      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
#    cd: Path.expand("../assets", __DIR__),
#    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
#  ]

config :esbuild,
  version: "0.14.29",
  default: [
    args: [
      "js/app.js",
      "--bundle",
      "--target=es2017",
      "--outdir=../priv/static/assets",
      "--external:/fonts/*",
      "--external:/images/*"
    ],
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

#  config :absinthe_extra,
#  endpoint: Web.Endpoint,
#  path: "/graphql",
#  complexity: 5,
#  schema: Web.Schema

# Configures Elixir's Logger

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :arc,
  storage: Arc.Storage.Local

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
