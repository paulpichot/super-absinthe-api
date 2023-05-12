defmodule Superhappytm.Opta do
  @moduledoc """
  The Opta context.
  """

  import Ecto.Query, warn: false
  alias Superhappytm.Repo

  alias Superhappytm.Opta.OptaplayPlayer

  @doc """
  Returns the list of optaplay_players.

  ## Examples

      iex> list_optaplay_players()
      [%OptaplayPlayer{}, ...]

  """
  def list_optaplay_players do
    Repo.all(OptaplayPlayer)
  end

  @doc """
  Gets a single optaplay_player.

  Raises `Ecto.NoResultsError` if the Players player does not exist.

  ## Examples

      iex> get_optaplay_player!(123)
      %OptaplayPlayer{}

      iex> get_optaplay_player!(456)
      ** (Ecto.NoResultsError)

  """
  def get_optaplay_player!(id), do: Repo.get!(OptaplayPlayer, id)

  @doc """
  Creates a optaplay_player.

  ## Examples

      iex> create_optaplay_player(%{field: value})
      {:ok, %OptaplayPlayer{}}

      iex> create_optaplay_player(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_optaplay_player(attrs \\ %{}) do
    opta_id = Map.get(attrs, :opta_id)
    attrs_without_opta_id = Map.delete(attrs, :opta_id)

    case find_optaplay_player_by_opta_id(opta_id) do
      %OptaplayPlayer{} = optaplay_player ->
        optaplay_player
        |> OptaplayPlayer.changeset(attrs_without_opta_id)
        |> Repo.update()
      nil ->
        changeset = OptaplayPlayer.changeset(%OptaplayPlayer{}, attrs)
        {:ok, player} = Repo.insert(changeset)
        {:ok, player}
    end
  end

  @doc """
  Updates a optaplay_player.

  ## Examples

      iex> update_optaplay_player(optaplay_player, %{field: new_value})
      {:ok, %OptaplayPlayer{}}

      iex> update_optaplay_player(optaplay_player, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_optaplay_player_by_opta_id(opta_id, attrs) do
    case find_optaplay_player_by_opta_id(opta_id) do
      %OptaplayPlayer{} = optaplay_player ->
        optaplay_player
        |> OptaplayPlayer.changeset(attrs)
        |> Repo.update()
      nil ->
        {:error, :not_found}
    end
  end

  @doc """
  Deletes a optaplay_player.

  ## Examples

      iex> delete_optaplay_player(optaplay_player)
      {:ok, %OptaplayPlayer{}}

      iex> delete_optaplay_player(optaplay_player)
      {:error, %Ecto.Changeset{}}

  """
  def delete_optaplay_player(%OptaplayPlayer{} = optaplay_player) do
    Repo.delete(optaplay_player)
  end

  def delete_optaplay_player_by_opta_id(opta_id) do
    case find_optaplay_player_by_opta_id(opta_id) do
      %OptaplayPlayer{} = optaplay_player ->
        delete_optaplay_player(optaplay_player)
      nil ->
        {:error, :not_found}
    end
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking optaplay_player changes.

  ## Examples

      iex> change_optaplay_player(optaplay_player)
      %Ecto.Changeset{data: %OptaplayPlayer{}}

  """
  def change_optaplay_player(%OptaplayPlayer{} = optaplay_player, attrs \\ %{}) do
    OptaplayPlayer.changeset(optaplay_player, attrs)
  end


  @spec find_optaplay_player_by_opta_id(any) :: any
  @doc """
  Finds a OptaplayPlayer by opta_id.

  ## Examples

      iex> find_optaplay_player(123)
      %OptaplayPlayer{}

      iex> find_optaplay_player(456)
      nil
  """
  def find_optaplay_player_by_opta_id(opta_id) do
    Repo.get_by(OptaplayPlayer, opta_id: opta_id)
  end

  alias Superhappytm.Opta.OptarankPlayer

  @doc """
  Returns the list of optarank_players.

  ## Examples

      iex> list_optarank_players()
      [%OptarankPlayer{}, ...]

  """
  def list_optarank_players do
    Repo.all(OptarankPlayer)
  end

  @doc """
  Gets a single optarank_player.

  Raises `Ecto.NoResultsError` if the Rankings player does not exist.

  ## Examples

      iex> get_optarank_player!(123)
      %OptarankPlayer{}

      iex> get_optarank_player!(456)
      ** (Ecto.NoResultsError)

  """
  def get_optarank_player!(id), do: Repo.get!(OptarankPlayer, id)

  @doc """
  Creates a optarank_player.

  ## Examples

      iex> create_optarank_player(%{field: value})
      {:ok, %OptarankPlayer{}}

      iex> create_optarank_player(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_optarank_player(attrs \\ %{}) do
    opta_id = Map.get(attrs, :opta_id)
    attrs_without_opta_id = Map.delete(attrs, :opta_id)

    case find_optarank_player_by_opta_id(opta_id) do
      %OptarankPlayer{} = optarank_player ->
        optarank_player
        |> OptaplayPlayer.changeset(attrs_without_opta_id)
        |> Repo.update()
      nil ->
        changeset = OptarankPlayer.changeset(%OptarankPlayer{}, attrs)
        {:ok, player} = Repo.insert(changeset)
        {:ok, player}
    end
  end

  @doc """
  Updates a optarank_player.

  ## Examples

      iex> update_optarank_player_by_opta_id(optarank_player, %{field: new_value})
      {:ok, %OptarankPlayer{}}

      iex> update_optarank_player_by_opta_id(optarank_player, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_optarank_player_by_opta_id(opta_id, attrs) do
    case find_optarank_player_by_opta_id(opta_id) do
      %OptarankPlayer{} = optarank_player ->
        optarank_player
        |> OptarankPlayer.changeset(attrs)
        |> Repo.update()
      nil ->
        {:error, :not_found}
    end
  end


  @doc """
  Returns an `%Ecto.Changeset{}` for tracking optarank_player changes.

  ## Examples

      iex> change_optarank_player(optarank_player)
      %Ecto.Changeset{data: %OptarankPlayer{}}

  """
  def change_optarank_player(%OptarankPlayer{} = optarank_player, attrs \\ %{}) do
    OptarankPlayer.changeset(optarank_player, attrs)
  end

  @spec find_optarank_player_by_opta_id(any) :: any
  @doc """
  Finds OptarankPlayer by opta_id.

  ## Examples

      iex> find_optarank_player(123)
      %OptarankPlayer{}

      iex> find_optarank_player(456)
      nil
  """
  def find_optarank_player_by_opta_id(opta_id) do
    Repo.get_by(OptarankPlayer, opta_id: opta_id)
  end

  def delete_optarank_player_by_opta_id(%OptarankPlayer{} = optarank_player) do
    Repo.delete(optarank_player)
  end

  def delete_optarank_player_by_opta_id(opta_id) do
    case find_optarank_player_by_opta_id(opta_id) do
      %OptarankPlayer{} = optarank_player ->
        delete_optarank_player_by_opta_id(optarank_player)
      nil ->
        {:error, :not_found}
    end
  end
end
