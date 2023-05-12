defmodule Superhappytm.Live.Match do
  use Ecto.Schema
  import Ecto.Changeset

  schema "matches" do
    field :last_update, :string
    field :opta_id, :string
    field :set, :string
    field :stats, :string

    timestamps()
  end

  @doc false
  def changeset(match, attrs) do
    match
    |> cast(attrs, [:opta_id, :last_update, :stats, :set])
    |> validate_required([:opta_id, :last_update, :stats, :set])
    |> unique_constraint(:opta_id, name: "index_live_match_on_opta_id_unique", update: true)
  end
end
