defmodule SuperhappytmWeb.Types.OptaplayPlayerTypes do
  use Absinthe.Schema.Notation

  object :optaplay_player do
    field :alpha_code_country, :string
    field :country_of_birth, :string
    field :country_of_birth_id, :string
    field :date_of_birth, :string
    field :first_name, :string
    field :gender, :string
    field :height, :integer
    field :last_name, :string
    field :last_updated, :string
    field :match_name, :string
    field :nationality, :string
    field :nationality_id, :string
    field :opta_id, :string
    field :place_of_birth, :string
    field :weight, :integer
  end

  input_object :optaplay_player_input do
    field :alpha_code_country, :string
    field :country_of_birth, :string
    field :country_of_birth_id, :string
    field :date_of_birth, :string
    field :first_name, :string
    field :gender, :string
    field :height, :integer
    field :last_name, :string
    field :last_updated, :string
    field :match_name, :string
    field :nationality, :string
    field :nationality_id, :string
    field :opta_id, :string
    field :place_of_birth, :string
    field :weight, :integer
  end

end
