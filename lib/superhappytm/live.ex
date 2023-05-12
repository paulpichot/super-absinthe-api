defmodule Superhappytm.Live do
  @moduledoc """
  The Live context.
  """

  import Ecto.Query, warn: false
  alias Superhappytm.Repo

  alias Superhappytm.Live.Match

  @doc """
  Returns the list of matches.

  ## Examples

      iex> list_matches()
      [%Match{}, ...]

  """
  def list_live_matches do
    Repo.all(Match)
  end

  @doc """
  Gets a single match.

  Raises `Ecto.NoResultsError` if the Match does not exist.

  ## Examples

      iex> get_match!(123)
      %Match{}

      iex> get_match!(456)
      ** (Ecto.NoResultsError)

  """
  def get_match!(id), do: Repo.get!(Match, id)

  @doc """
  Creates a match.

  ## Examples

      iex> create_match(%{field: value})
      {:ok, %Match{}}

      iex> create_match(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_live_match(attrs \\ %{}) do
    opta_id = Map.get(attrs, :opta_id)
    attrs_without_opta_id = Map.delete(attrs, :opta_id)

    case find_live_match_by_opta_id(opta_id) do
      %{} = live_match ->
        live_match
        |> Match.changeset(attrs_without_opta_id)
        |> Repo.update()
      nil ->
        changeset = Match.changeset(%Match{}, attrs)
        {:ok, live_match} = Repo.insert(changeset)
        {:ok, live_match}
    end
  end

  @doc """
  Updates a match.

  ## Examples

      iex> update_live_match_by_opta_id(live_match, %{field: new_value})
      {:ok, %WordpressPlayer{}}

      iex> update_live_match_by_opta_id(live_match, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_live_match_by_opta_id(opta_id, attrs) do
    case find_live_match_by_opta_id(opta_id) do
      %Match{} = live_match ->
        live_match
        |> Match.changeset(attrs)
        |> Repo.update()
      nil ->
        {:error, :not_found}
    end
  end

  @doc """
  Finds a OptaplayPlayer by opta_id.

  ## Examples

      iex> find_wordpress_player(123)
      %OptaplayPlayer{}

      iex> find_wordpress_player(456)
      nil
  """
  def find_live_match_by_opta_id(opta_id) do
    Repo.get_by(Match, opta_id: opta_id)
  end

  @doc """
  Deletes a match.

  ## Examples

      iex> delete_match(match)
      {:ok, %Match{}}

      iex> delete_match(match)
      {:error, %Ecto.Changeset{}}

  """
  def delete_live_match_by_opta_id(%Match{} = live_match) do
    Repo.delete(live_match)
  end

  def delete_live_match_by_opta_id(opta_id) do
    case find_live_match_by_opta_id(opta_id) do
      %Match{} = live_match ->
        delete_live_match_by_opta_id(live_match)
      nil ->
        {:error, :not_found}
    end
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking match changes.

  ## Examples

      iex> change_match(match)
      %Ecto.Changeset{data: %Match{}}

  """
  def change_match(%Match{} = match, attrs \\ %{}) do
    Match.changeset(match, attrs)
  end
end
