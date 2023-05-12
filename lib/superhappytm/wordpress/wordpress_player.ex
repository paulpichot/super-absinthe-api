defmodule Superhappytm.Wordpress.WordpressPlayer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "wordpress_players" do
    field :opta_id, :string
    field :wordpress_id, :integer

    timestamps()
  end

  @doc false
  def changeset(wordpress_player, attrs) do
    wordpress_player
    |> cast(attrs, [:opta_id, :wordpress_id])
    |> validate_required([:opta_id, :wordpress_id])
    |> unique_constraint(:opta_id, name: "index_wordpress_optaplayon_opta_id_unique", update: true)
    |> unique_constraint(:wordpress_id, name: "index_wordpress_optaplayon_wordpress_id_unique", update: true)
  end
end
