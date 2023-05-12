defmodule Superhappytm.Repo.Migrations.CreateWordpressPlayers do
  use Ecto.Migration

  def change do
    create table(:wordpress_players) do
      add :opta_id, :string
      add :wordpress_id, :integer

      timestamps()
    end

    create unique_index(:wordpress_players, [:opta_id], name: "index_wordpress_optaplayon_opta_id_unique", on_conflict: :nothing)
  end
end
