#https://github.com/elixir-lang/ecto
#https://github.com/livehelpnow/tds_ecto

defmodule Repo do
  use Ecto.Repo,
    otp_app: :my_app,
    adapter: Tds.Ecto
end

defmodule Weather do
  use Ecto.Model

  schema "weather" do
    field :city     # Defaults to type :string
    field :temp_lo, :integer
    field :temp_hi, :integer
    field :prcp,    :float, default: 0.0
  end
end

defmodule Simple do
  import Ecto.Query

  def sample_query do
    query = from w in Weather,
          where: w.prcp > 0 or is_nil(w.prcp),
         select: w
    Repo.all(query)
  end
end