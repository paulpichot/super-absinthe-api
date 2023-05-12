defmodule Superhappytm.Wordpress.WordpressTaxonomy do
  use Ecto.Schema
  import Ecto.Changeset

  schema "wordpress_taxonomies" do
    field :name, :string
    field :opta_id, :string
    field :slug, :string
    field :type, :string
    field :wordpress_id, :integer

    timestamps()
  end

  @doc false
  def changeset(wordpress_taxonomy, attrs) do
    wordpress_taxonomy
    |> cast(attrs, [:opta_id, :wordpress_id, :name, :slug, :type])
    |> validate_required([:opta_id, :wordpress_id, :name, :slug, :type])
    |> unique_constraint(:opta_id, name: "index_wordpress_taxonomy_on_opta_id_unique", update: true)
  end
end
