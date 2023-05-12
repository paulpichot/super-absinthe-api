defmodule Superhappytm.Repo do
  use Ecto.Repo,
    otp_app: :superhappytm,
    adapter: Ecto.Adapters.Postgres
end
