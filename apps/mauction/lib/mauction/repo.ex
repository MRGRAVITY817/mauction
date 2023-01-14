defmodule Mauction.Repo do
  use Ecto.Repo,
    otp_app: :mauction,
    adapter: Ecto.Adapters.Postgres
end
