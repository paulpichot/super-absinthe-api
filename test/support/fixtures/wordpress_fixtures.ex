defmodule Superhappytm.WordpressFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Superhappytm.Wordpress` context.
  """

  @doc """
  Generate a wordpress_player.
  """
  def wordpress_player_fixture(attrs \\ %{}) do
    {:ok, wordpress_player} =
      attrs
      |> Enum.into(%{
        opta_id: "some opta_id",
        wordpress_id: 42
      })
      |> Superhappytm.Wordpress.create_wordpress_player()

    wordpress_player
  end

  @doc """
  Generate a wordpress_taxonomy.
  """
  def wordpress_taxonomy_fixture(attrs \\ %{}) do
    {:ok, wordpress_taxonomy} =
      attrs
      |> Enum.into(%{
        name: "some name",
        opta_id: "some opta_id",
        slug: "some slug",
        type: "some type",
        wordpress_id: 42
      })
      |> Superhappytm.Wordpress.create_wordpress_taxonomy()

    wordpress_taxonomy
  end
end
