defmodule Superhappytm.Opta.OptaplayPlayer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "optaplay_players" do
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

    timestamps()
  end

  @doc false
  def changeset(optaplay_player, attrs) do
    optaplay_player
    |> cast(attrs, [:opta_id, :match_name, :first_name, :last_name, :nationality_id, :nationality, :country_of_birth_id, :country_of_birth, :date_of_birth, :place_of_birth, :gender, :height, :weight, :last_updated, :alpha_code_country])
    |> validate_required([:opta_id, :match_name, :first_name, :last_name, :nationality_id, :nationality, :country_of_birth_id, :country_of_birth, :date_of_birth, :place_of_birth, :gender, :height, :weight, :last_updated, :alpha_code_country])
    |> unique_constraint(:opta_id, name: "index_optaplayoptaplayon_opta_id_unique", update: true)
  end
end
