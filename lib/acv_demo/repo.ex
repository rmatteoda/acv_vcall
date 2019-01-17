defmodule AcvDemo.Repo do
  use Ecto.Repo,
    otp_app: :acv_demo,
    adapter: Ecto.Adapters.Postgres
end
