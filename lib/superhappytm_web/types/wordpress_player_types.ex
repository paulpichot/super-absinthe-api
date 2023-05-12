defmodule SuperhappytmWeb.Types.WordpressPlayerTypes do
  use Absinthe.Schema.Notation

  object :wordpress_player do
    field :opta_id, :string
    field :wordpress_id, :integer
  end

  input_object :wordpress_player_input do
    field :opta_id, :string
    field :wordpress_id, :integer
  end

end
