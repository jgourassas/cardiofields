defmodule Cardiofields.Repo do
  use Ecto.Repo,
    otp_app: :cardiofields,
    adapter: Ecto.Adapters.Postgres

  use Scrivener, page_size: 10
end
