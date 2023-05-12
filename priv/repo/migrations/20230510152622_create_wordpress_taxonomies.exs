defmodule Superhappytm.Repo.Migrations.CreateWordpressTaxonomies do
  use Ecto.Migration

  def change do
    create table(:wordpress_taxonomies) do
      add :opta_id, :string
      add :wordpress_id, :integer
      add :name, :string
      add :slug, :string
      add :type, :string

      timestamps()
    end

    create unique_index(:wordpress_taxonomies, [:opta_id], name: "index_wordpress_taxonomy_on_opta_id_unique", on_conflict: :nothing)
  end
end
