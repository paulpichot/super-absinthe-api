defmodule Superhappytm.Repo.Migrations.CreateMatches do
  use Ecto.Migration

  def change do
    create table(:matches) do
      add :opta_id, :string
      add :last_update, :string
      add :stats, :string
      add :set, :string

      timestamps()
    end

    create unique_index(:matches, [:opta_id], name: "index_matches_on_opta_id_unique", on_conflict: :nothing)
  end
end
