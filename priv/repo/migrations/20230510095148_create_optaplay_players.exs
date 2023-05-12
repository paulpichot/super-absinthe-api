defmodule Superhappytm.Repo.Migrations.CreateOptaplayPlayers do
  use Ecto.Migration

  def change do
    create table(:optaplay_players) do
      add :opta_id, :string
      add :match_name, :string
      add :first_name, :string
      add :last_name, :string
      add :nationality_id, :string
      add :nationality, :string
      add :country_of_birth_id, :string
      add :country_of_birth, :string
      add :date_of_birth, :string
      add :place_of_birth, :string
      add :gender, :string
      add :height, :integer
      add :weight, :integer
      add :last_updated, :string
      add :alpha_code_country, :string

      timestamps()
    end

    create unique_index(:optaplay_players, [:opta_id], name: "index_optaplayoptaplayon_opta_id_unique", on_conflict: :nothing)
  end
end
