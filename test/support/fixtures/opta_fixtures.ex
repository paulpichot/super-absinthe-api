defmodule Superhappytm.OptaFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Superhappytm.Opta` context.
  """

  @doc """
  Generate a optaplay_player.
  """
  def optaplay_player_fixture(attrs \\ %{}) do
    {:ok, optaplay_player} =
      attrs
      |> Enum.into(%{
        alpha_code_country: "some alpha_code_country",
        country_of_birth: "some country_of_birth",
        country_of_birth_id: "some country_of_birth_id",
        date_of_birth: "some date_of_birth",
        first_name: "some first_name",
        gender: "some gender",
        height: 42,
        last_name: "some last_name",
        last_updated: "2021-11-20T09:35:19Z",
        match_name: "some match_name",
        nationality: "some nationality",
        nationality_id: "some nationality_id",
        opta_id: "some opta_id",
        place_of_birth: "some place_of_birth",
        weight: 42
      })
      |> Superhappytm.Opta.create_optaplay_player()

    optaplay_player
  end

  @doc """
  Generate a optarank_player.
  """
  def optarank_player_fixture(attrs \\ %{}) do
    {:ok, optarank_player} =
      attrs
      |> Enum.into(%{
        alpha_code_country: "some alpha_code_country",
        first_name: "some first_name",
        last_name: "some last_name",
        last_position: 42,
        match_name: "some match_name",
        nationality: "some nationality",
        nationality_id: "some nationality_id",
        opta_id: "some opta_id",
        points: 42,
        position: 42,
        tournaments_played: 42
      })
      |> Superhappytm.Opta.create_optarank_player()

    optarank_player
  end
end
