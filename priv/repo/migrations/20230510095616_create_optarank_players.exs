defmodule Superhappytm.Repo.Migrations.CreateOptarankPlayers do
  use Ecto.Migration

  def change do
    create table(:optarank_players) do
      add :opta_id, :string
      add :match_name, :string
      add :first_name, :string
      add :last_name, :string
      add :nationality_id, :string
      add :nationality, :string
      add :alpha_code_country, :string
      add :position, :integer
      add :last_position, :integer
      add :points, :integer
      add :tournaments_played, :integer

      timestamps()
    end

    create unique_index(:optarank_players, [:opta_id], name: "index_optarankoptaplayon_opta_id_unique", on_conflict: :nothing)
  end
end
