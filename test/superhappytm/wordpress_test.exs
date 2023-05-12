defmodule Superhappytm.WordpressTest do
  use Superhappytm.DataCase

  alias Superhappytm.Wordpress

  describe "wordpress_players" do
    alias Superhappytm.Wordpress.WordpressPlayer

    import Superhappytm.WordpressFixtures

    @invalid_attrs %{opta_id: nil, wordpress_id: nil}

    test "list_wordpress_players/0 returns all wordpress_players" do
      wordpress_player = wordpress_player_fixture()
      assert Wordpress.list_wordpress_players() == [wordpress_player]
    end

    test "get_wordpress_player!/1 returns the wordpress_player with given id" do
      wordpress_player = wordpress_player_fixture()
      assert Wordpress.get_wordpress_player!(wordpress_player.id) == wordpress_player
    end

    test "create_wordpress_player/1 with valid data creates a wordpress_player" do
      valid_attrs = %{opta_id: "some opta_id", wordpress_id: 42}

      assert {:ok, %WordpressPlayer{} = wordpress_player} = Wordpress.create_wordpress_player(valid_attrs)
      assert wordpress_player.opta_id == "some opta_id"
      assert wordpress_player.wordpress_id == 42
    end

    test "create_wordpress_player/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Wordpress.create_wordpress_player(@invalid_attrs)
    end

    test "update_wordpress_player/2 with valid data updates the wordpress_player" do
      wordpress_player = wordpress_player_fixture()
      update_attrs = %{opta_id: "some updated opta_id", wordpress_id: 43}

      assert {:ok, %WordpressPlayer{} = wordpress_player} = Wordpress.update_wordpress_player(wordpress_player, update_attrs)
      assert wordpress_player.opta_id == "some updated opta_id"
      assert wordpress_player.wordpress_id == 43
    end

    test "update_wordpress_player/2 with invalid data returns error changeset" do
      wordpress_player = wordpress_player_fixture()
      assert {:error, %Ecto.Changeset{}} = Wordpress.update_wordpress_player(wordpress_player, @invalid_attrs)
      assert wordpress_player == Wordpress.get_wordpress_player!(wordpress_player.id)
    end

    test "delete_wordpress_player/1 deletes the wordpress_player" do
      wordpress_player = wordpress_player_fixture()
      assert {:ok, %WordpressPlayer{}} = Wordpress.delete_wordpress_player(wordpress_player)
      assert_raise Ecto.NoResultsError, fn -> Wordpress.get_wordpress_player!(wordpress_player.id) end
    end

    test "change_wordpress_player/1 returns a wordpress_player changeset" do
      wordpress_player = wordpress_player_fixture()
      assert %Ecto.Changeset{} = Wordpress.change_wordpress_player(wordpress_player)
    end
  end

  describe "wordpress_taxonomies" do
    alias Superhappytm.Wordpress.WordpressTaxonomy

    import Superhappytm.WordpressFixtures

    @invalid_attrs %{name: nil, opta_id: nil, slug: nil, type: nil, wordpress_id: nil}

    test "list_wordpress_taxonomies/0 returns all wordpress_taxonomies" do
      wordpress_taxonomy = wordpress_taxonomy_fixture()
      assert Wordpress.list_wordpress_taxonomies() == [wordpress_taxonomy]
    end

    test "get_wordpress_taxonomy!/1 returns the wordpress_taxonomy with given id" do
      wordpress_taxonomy = wordpress_taxonomy_fixture()
      assert Wordpress.get_wordpress_taxonomy!(wordpress_taxonomy.id) == wordpress_taxonomy
    end

    test "create_wordpress_taxonomy/1 with valid data creates a wordpress_taxonomy" do
      valid_attrs = %{name: "some name", opta_id: "some opta_id", slug: "some slug", type: "some type", wordpress_id: 42}

      assert {:ok, %WordpressTaxonomy{} = wordpress_taxonomy} = Wordpress.create_wordpress_taxonomy(valid_attrs)
      assert wordpress_taxonomy.name == "some name"
      assert wordpress_taxonomy.opta_id == "some opta_id"
      assert wordpress_taxonomy.slug == "some slug"
      assert wordpress_taxonomy.type == "some type"
      assert wordpress_taxonomy.wordpress_id == 42
    end

    test "create_wordpress_taxonomy/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Wordpress.create_wordpress_taxonomy(@invalid_attrs)
    end

    test "update_wordpress_taxonomy/2 with valid data updates the wordpress_taxonomy" do
      wordpress_taxonomy = wordpress_taxonomy_fixture()
      update_attrs = %{name: "some updated name", opta_id: "some updated opta_id", slug: "some updated slug", type: "some updated type", wordpress_id: 43}

      assert {:ok, %WordpressTaxonomy{} = wordpress_taxonomy} = Wordpress.update_wordpress_taxonomy(wordpress_taxonomy, update_attrs)
      assert wordpress_taxonomy.name == "some updated name"
      assert wordpress_taxonomy.opta_id == "some updated opta_id"
      assert wordpress_taxonomy.slug == "some updated slug"
      assert wordpress_taxonomy.type == "some updated type"
      assert wordpress_taxonomy.wordpress_id == 43
    end

    test "update_wordpress_taxonomy/2 with invalid data returns error changeset" do
      wordpress_taxonomy = wordpress_taxonomy_fixture()
      assert {:error, %Ecto.Changeset{}} = Wordpress.update_wordpress_taxonomy(wordpress_taxonomy, @invalid_attrs)
      assert wordpress_taxonomy == Wordpress.get_wordpress_taxonomy!(wordpress_taxonomy.id)
    end

    test "delete_wordpress_taxonomy/1 deletes the wordpress_taxonomy" do
      wordpress_taxonomy = wordpress_taxonomy_fixture()
      assert {:ok, %WordpressTaxonomy{}} = Wordpress.delete_wordpress_taxonomy(wordpress_taxonomy)
      assert_raise Ecto.NoResultsError, fn -> Wordpress.get_wordpress_taxonomy!(wordpress_taxonomy.id) end
    end

    test "change_wordpress_taxonomy/1 returns a wordpress_taxonomy changeset" do
      wordpress_taxonomy = wordpress_taxonomy_fixture()
      assert %Ecto.Changeset{} = Wordpress.change_wordpress_taxonomy(wordpress_taxonomy)
    end
  end
end
