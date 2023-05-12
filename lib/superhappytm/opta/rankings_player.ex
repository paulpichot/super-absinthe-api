defmodule Superhappytm.Opta.OptarankPlayer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "optarank_players" do
    field :alpha_code_country, :string
    field :first_name, :string
    field :last_name, :string
    field :last_position, :integer
    field :match_name, :string
    field :nationality, :string
    field :nationality_id, :string
    field :opta_id, :string
    field :points, :integer
    field :position, :integer
    field :tournaments_played, :integer

    timestamps()
  end

  @doc false
  def changeset(optarank_player, attrs) do
    optarank_player
    |> cast(attrs, [:opta_id, :match_name, :first_name, :last_name, :nationality_id, :nationality, :alpha_code_country, :position, :last_position, :points, :tournaments_played])
    |> validate_required([:opta_id, :match_name, :first_name, :last_name, :nationality_id, :nationality, :alpha_code_country, :position, :last_position, :points, :tournaments_played])
    |> unique_constraint(:opta_id, name: "index_optaplayoptaplayon_opta_id_unique", update: true)
  end
end
