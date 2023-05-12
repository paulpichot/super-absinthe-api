defmodule Superhappytm.LiveFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Superhappytm.Live` context.
  """

  @doc """
  Generate a match.
  """
  def match_fixture(attrs \\ %{}) do
    {:ok, match} =
      attrs
      |> Enum.into(%{
        last_update: "some last_update",
        opta_id: "some opta_id",
        set: "some set",
        stats: "some stats"
      })
      |> Superhappytm.Live.create_match()

    match
  end
end
