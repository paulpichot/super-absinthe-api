defmodule Superhappytm.LiveTest do
  use Superhappytm.DataCase

  alias Superhappytm.Live

  describe "matches" do
    alias Superhappytm.Live.Match

    import Superhappytm.LiveFixtures

    @invalid_attrs %{last_update: nil, opta_id: nil, set: nil, stats: nil}

    test "list_matches/0 returns all matches" do
      match = match_fixture()
      assert Live.list_matches() == [match]
    end

    test "get_match!/1 returns the match with given id" do
      match = match_fixture()
      assert Live.get_match!(match.id) == match
    end

    test "create_match/1 with valid data creates a match" do
      valid_attrs = %{last_update: "some last_update", opta_id: "some opta_id", set: "some set", stats: "some stats"}

      assert {:ok, %Match{} = match} = Live.create_match(valid_attrs)
      assert match.last_update == "some last_update"
      assert match.opta_id == "some opta_id"
      assert match.set == "some set"
      assert match.stats == "some stats"
    end

    test "create_match/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Live.create_match(@invalid_attrs)
    end

    test "update_match/2 with valid data updates the match" do
      match = match_fixture()
      update_attrs = %{last_update: "some updated last_update", opta_id: "some updated opta_id", set: "some updated set", stats: "some updated stats"}

      assert {:ok, %Match{} = match} = Live.update_match(match, update_attrs)
      assert match.last_update == "some updated last_update"
      assert match.opta_id == "some updated opta_id"
      assert match.set == "some updated set"
      assert match.stats == "some updated stats"
    end

    test "update_match/2 with invalid data returns error changeset" do
      match = match_fixture()
      assert {:error, %Ecto.Changeset{}} = Live.update_match(match, @invalid_attrs)
      assert match == Live.get_match!(match.id)
    end

    test "delete_match/1 deletes the match" do
      match = match_fixture()
      assert {:ok, %Match{}} = Live.delete_match(match)
      assert_raise Ecto.NoResultsError, fn -> Live.get_match!(match.id) end
    end

    test "change_match/1 returns a match changeset" do
      match = match_fixture()
      assert %Ecto.Changeset{} = Live.change_match(match)
    end
  end
end
