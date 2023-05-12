defmodule Superhappytm.OptaTest do
  use Superhappytm.DataCase

  alias Superhappytm.Opta

  describe "optaplay_players" do
    alias Superhappytm.Opta.OptaplayPlayer

    import Superhappytm.OptaFixtures

    @invalid_attrs %{alpha_code_country: nil, country_of_birth: nil, country_of_birth_id: nil, date_of_birth: nil, first_name: nil, gender: nil, height: nil, last_name: nil, last_updated: nil, match_name: nil, nationality: nil, nationality_id: nil, opta_id: nil, place_of_birth: nil, weight: nil}

    test "list_optaplay_players/0 returns all optaplay_players" do
      optaplay_player = optaplay_player_fixture()
      assert Opta.list_optaplay_players() == [optaplay_player]
    end

    test "get_optaplay_player!/1 returns the optaplay_player with given id" do
      optaplay_player = optaplay_player_fixture()
      assert Opta.get_optaplay_player!(optaplay_player.id) == optaplay_player
    end

    test "create_optaplay_player/1 with valid data creates a optaplay_player" do
      valid_attrs = %{alpha_code_country: "some alpha_code_country", country_of_birth: "some country_of_birth", country_of_birth_id: "some country_of_birth_id", date_of_birth: "some date_of_birth", first_name: "some first_name", gender: "some gender", height: 42, last_name: "some last_name", last_updated: "2021-11-20T09:35:19Z", match_name: "some match_name", nationality: "some nationality", nationality_id: "some nationality_id", opta_id: "some opta_id", place_of_birth: "some place_of_birth", weight: 42}

      assert {:ok, %OptaplayPlayer{} = optaplay_player} = Opta.create_optaplay_player(valid_attrs)
      assert optaplay_player.alpha_code_country == "some alpha_code_country"
      assert optaplay_player.country_of_birth == "some country_of_birth"
      assert optaplay_player.country_of_birth_id == "some country_of_birth_id"
      assert optaplay_player.date_of_birth == "some date_of_birth"
      assert optaplay_player.first_name == "some first_name"
      assert optaplay_player.gender == "some gender"
      assert optaplay_player.height == 42
      assert optaplay_player.last_name == "some last_name"
      assert optaplay_player.last_updated == "2021-11-20T09:35:19Z"
      assert optaplay_player.match_name == "some match_name"
      assert optaplay_player.nationality == "some nationality"
      assert optaplay_player.nationality_id == "some nationality_id"
      assert optaplay_player.opta_id == "some opta_id"
      assert optaplay_player.place_of_birth == "some place_of_birth"
      assert optaplay_player.weight == 42
    end

    test "create_optaplay_player/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Opta.create_optaplay_player(@invalid_attrs)
    end

    test "update_optaplay_player/2 with valid data updates the optaplay_player" do
      optaplay_player = optaplay_player_fixture()
      update_attrs = %{alpha_code_country: "some updated alpha_code_country", country_of_birth: "some updated country_of_birth", country_of_birth_id: "some updated country_of_birth_id", date_of_birth: "some updated date_of_birth", first_name: "some updated first_name", gender: "some updated gender", height: 43, last_name: "some updated last_name", last_updated: "2021-11-20T09:35:19Z", match_name: "some updated match_name", nationality: "some updated nationality", nationality_id: "some updated nationality_id", opta_id: "some updated opta_id", place_of_birth: "some updated place_of_birth", weight: 43}

      assert {:ok, %OptaplayPlayer{} = optaplay_player} = Opta.update_optaplay_player(optaplay_player, update_attrs)
      assert optaplay_player.alpha_code_country == "some updated alpha_code_country"
      assert optaplay_player.country_of_birth == "some updated country_of_birth"
      assert optaplay_player.country_of_birth_id == "some updated country_of_birth_id"
      assert optaplay_player.date_of_birth == "some updated date_of_birth"
      assert optaplay_player.first_name == "some updated first_name"
      assert optaplay_player.gender == "some updated gender"
      assert optaplay_player.height == 43
      assert optaplay_player.last_name == "some updated last_name"
      assert optaplay_player.last_updated == "2021-11-20T09:35:19Z"
      assert optaplay_player.match_name == "some updated match_name"
      assert optaplay_player.nationality == "some updated nationality"
      assert optaplay_player.nationality_id == "some updated nationality_id"
      assert optaplay_player.opta_id == "some updated opta_id"
      assert optaplay_player.place_of_birth == "some updated place_of_birth"
      assert optaplay_player.weight == 43
    end

    test "update_optaplay_player/2 with invalid data returns error changeset" do
      optaplay_player = optaplay_player_fixture()
      assert {:error, %Ecto.Changeset{}} = Opta.update_optaplay_player(optaplay_player, @invalid_attrs)
      assert optaplay_player == Opta.get_optaplay_player!(optaplay_player.id)
    end

    test "delete_optaplay_player/1 deletes the optaplay_player" do
      optaplay_player = optaplay_player_fixture()
      assert {:ok, %OptaplayPlayer{}} = Opta.delete_optaplay_player(optaplay_player)
      assert_raise Ecto.NoResultsError, fn -> Opta.get_optaplay_player!(optaplay_player.id) end
    end

    test "change_optaplay_player/1 returns a optaplay_player changeset" do
      optaplay_player = optaplay_player_fixture()
      assert %Ecto.Changeset{} = Opta.change_optaplay_player(optaplay_player)
    end
  end

  describe "optarank_players" do
    alias Superhappytm.Opta.OptarankPlayer

    import Superhappytm.OptaFixtures

    @invalid_attrs %{alpha_code_country: nil, first_name: nil, last_name: nil, last_position: nil, match_name: nil, nationality: nil, nationality_id: nil, opta_id: nil, points: nil, position: nil, tournaments_played: nil}

    test "list_optarank_players/0 returns all optarank_players" do
      optarank_player = optarank_player_fixture()
      assert Opta.list_optarank_players() == [optarank_player]
    end

    test "get_optarank_player!/1 returns the optarank_player with given id" do
      optarank_player = optarank_player_fixture()
      assert Opta.get_optarank_player!(optarank_player.id) == optarank_player
    end

    test "create_optarank_player/1 with valid data creates a optarank_player" do
      valid_attrs = %{alpha_code_country: "some alpha_code_country", first_name: "some first_name", last_name: "some last_name", last_position: 42, match_name: "some match_name", nationality: "some nationality", nationality_id: "some nationality_id", opta_id: "some opta_id", points: 42, position: 42, tournaments_played: 42}

      assert {:ok, %OptarankPlayer{} = optarank_player} = Opta.create_optarank_player(valid_attrs)
      assert optarank_player.alpha_code_country == "some alpha_code_country"
      assert optarank_player.first_name == "some first_name"
      assert optarank_player.last_name == "some last_name"
      assert optarank_player.last_position == 42
      assert optarank_player.match_name == "some match_name"
      assert optarank_player.nationality == "some nationality"
      assert optarank_player.nationality_id == "some nationality_id"
      assert optarank_player.opta_id == "some opta_id"
      assert optarank_player.points == 42
      assert optarank_player.position == 42
      assert optarank_player.tournaments_played == 42
    end

    test "create_optarank_player/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Opta.create_optarank_player(@invalid_attrs)
    end

    test "update_optarank_player/2 with valid data updates the optarank_player" do
      optarank_player = optarank_player_fixture()
      update_attrs = %{alpha_code_country: "some updated alpha_code_country", first_name: "some updated first_name", last_name: "some updated last_name", last_position: 43, match_name: "some updated match_name", nationality: "some updated nationality", nationality_id: "some updated nationality_id", opta_id: "some updated opta_id", points: 43, position: 43, tournaments_played: 43}

      assert {:ok, %OptarankPlayer{} = optarank_player} = Opta.update_optarank_player(optarank_player, update_attrs)
      assert optarank_player.alpha_code_country == "some updated alpha_code_country"
      assert optarank_player.first_name == "some updated first_name"
      assert optarank_player.last_name == "some updated last_name"
      assert optarank_player.last_position == 43
      assert optarank_player.match_name == "some updated match_name"
      assert optarank_player.nationality == "some updated nationality"
      assert optarank_player.nationality_id == "some updated nationality_id"
      assert optarank_player.opta_id == "some updated opta_id"
      assert optarank_player.points == 43
      assert optarank_player.position == 43
      assert optarank_player.tournaments_played == 43
    end

    test "update_optarank_player/2 with invalid data returns error changeset" do
      optarank_player = optarank_player_fixture()
      assert {:error, %Ecto.Changeset{}} = Opta.update_optarank_player(optarank_player, @invalid_attrs)
      assert optarank_player == Opta.get_optarank_player!(optarank_player.id)
    end

    test "delete_optarank_player/1 deletes the optarank_player" do
      optarank_player = optarank_player_fixture()
      assert {:ok, %OptarankPlayer{}} = Opta.delete_optarank_player(optarank_player)
      assert_raise Ecto.NoResultsError, fn -> Opta.get_optarank_player!(optarank_player.id) end
    end

    test "change_optarank_player/1 returns a optarank_player changeset" do
      optarank_player = optarank_player_fixture()
      assert %Ecto.Changeset{} = Opta.change_optarank_player(optarank_player)
    end
  end
end
