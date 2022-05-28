import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :cardiofields, Cardiofields.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "cardiofields_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :cardiofields, CardiofieldsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "j2c5X9RAxKpaU3YOWG1CFBTFElmJ/FZPm8S38/hZ7D3z+kmHSSL1VPNd9fcL3BFB",
  server: false

# In test we don't send emails.
config :cardiofields, Cardiofields.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
