defmodule SuperhappytmWeb.Types.MatchTypes do
  use Absinthe.Schema.Notation

  object :match do
    field :last_update, :string
    field :opta_id, :string
    field :set, :string
    field :stats, :string
  end

  input_object :match_input do
    field :last_update, :string
    field :opta_id, :string
    field :set, :string
    field :stats, :string
  end

end
