defmodule Superhappytm.Wordpress do
  @moduledoc """
  The Wordpress context.
  """

  import Ecto.Query, warn: false
  alias Superhappytm.Repo

  alias Superhappytm.Wordpress.WordpressPlayer

  @doc """
  Returns the list of wordpress_players.

  ## Examples

      iex> list_wordpress_players()
      [%WordpressPlayer{}, ...]

  """
  def list_wordpress_players do
    Repo.all(WordpressPlayer)
  end

  @doc """
  Gets a single wordpress_player.

  Raises `Ecto.NoResultsError` if the Wordpress player does not exist.

  ## Examples

      iex> get_wordpress_player!(123)
      %WordpressPlayer{}

      iex> get_wordpress_player!(456)
      ** (Ecto.NoResultsError)

  """
  def get_wordpress_player!(id), do: Repo.get!(WordpressPlayer, id)

  @doc """
  Creates a wordpress_player.

  ## Examples

      iex> create_wordpress_player(%{field: value})
      {:ok, %WordpressPlayer{}}

      iex> create_wordpress_player(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_wordpress_player(attrs \\ %{}) do
    opta_id = Map.get(attrs, :opta_id)
    attrs_without_opta_id = Map.delete(attrs, :opta_id)

    case find_wordpress_player_by_opta_id(opta_id) do
      %WordpressPlayer{} = wordpress_player ->
        wordpress_player
        |> WordpressPlayer.changeset(attrs_without_opta_id)
        |> Repo.update()
      nil ->
        changeset = WordpressPlayer.changeset(%WordpressPlayer{}, attrs)
        {:ok, player} = Repo.insert(changeset)
        {:ok, player}
    end
  end

  @doc """
  Updates a wordpress_player.

  ## Examples

      iex> update_wordpress_player(wordpress_player, %{field: new_value})
      {:ok, %WordpressPlayer{}}

      iex> update_wordpress_player(wordpress_player, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_wordpress_player_by_opta_id(opta_id, attrs) do
    case find_wordpress_player_by_opta_id(opta_id) do
      %WordpressPlayer{} = wordpress_player ->
        wordpress_player
        |> WordpressPlayer.changeset(attrs)
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
  def find_wordpress_player_by_opta_id(opta_id) do
    Repo.get_by(WordpressPlayer, opta_id: opta_id)
  end


  @doc """
  Deletes a wordpress_player.

  ## Examples

      iex> delete_wordpress_player(wordpress_player)
      {:ok, %WordpressPlayer{}}

      iex> delete_wordpress_player(wordpress_player)
      {:error, %Ecto.Changeset{}}

  """
  def delete_wordpress_player_by_opta_id(%WordpressPlayer{} = wordpress_player) do
    Repo.delete(wordpress_player)
  end

  def delete_wordpress_player_by_opta_id(opta_id) do
    case find_wordpress_player_by_opta_id(opta_id) do
      %WordpressPlayer{} = wordpress_player ->
        delete_wordpress_player_by_opta_id(wordpress_player)
      nil ->
        {:error, :not_found}
    end
  end


  @doc """
  Returns an `%Ecto.Changeset{}` for tracking wordpress_player changes.

  ## Examples

      iex> change_wordpress_player(wordpress_player)
      %Ecto.Changeset{data: %WordpressPlayer{}}

  """
  def change_wordpress_player(%WordpressPlayer{} = wordpress_player, attrs \\ %{}) do
    WordpressPlayer.changeset(wordpress_player, attrs)
  end

  alias Superhappytm.Wordpress.WordpressTaxonomy

  @doc """
  Returns the list of wordpress_taxonomies.

  ## Examples

      iex> list_wordpress_taxonomies()
      [%WordpressTaxonomy{}, ...]

  """
  def list_wordpress_taxonomies do
    Repo.all(WordpressTaxonomy)
  end

  @doc """
  Gets a single wordpress_taxonomy.

  Raises `Ecto.NoResultsError` if the Wordpress taxonomy does not exist.

  ## Examples

      iex> get_wordpress_taxonomy!(123)
      %WordpressTaxonomy{}

      iex> get_wordpress_taxonomy!(456)
      ** (Ecto.NoResultsError)

  """
  def get_wordpress_taxonomy!(id), do: Repo.get!(WordpressTaxonomy, id)

  @doc """
  Creates a wordpress_taxonomy.

  ## Examples

      iex> create_wordpress_taxonomy(%{field: value})
      {:ok, %WordpressTaxonomy{}}

      iex> create_wordpress_taxonomy(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_wordpress_taxonomy(attrs \\ %{}) do
    opta_id = Map.get(attrs, :opta_id)
    attrs_without_opta_id = Map.delete(attrs, :opta_id)

    case find_wordpress_taxonomy_by_opta_id(opta_id) do
      %WordpressTaxonomy{} = wordpress_taxonomy ->
        wordpress_taxonomy
        |> WordpressTaxonomy.changeset(attrs_without_opta_id)
        |> Repo.update()
      nil ->
        changeset = WordpressPlayer.changeset(%WordpressTaxonomy{}, attrs)
        {:ok, taxonomy} = Repo.insert(changeset)
        {:ok, taxonomy}
    end
  end



  @doc """
  Updates a wordpress_taxonomy.

  ## Examples

      iex> update_wordpress_taxonomy(wordpress_taxonomy, %{field: new_value})
      {:ok, %WordpressTaxonomy{}}

      iex> update_wordpress_taxonomy(wordpress_taxonomy, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_wordpress_taxonomy(%WordpressTaxonomy{} = wordpress_taxonomy, attrs) do
    wordpress_taxonomy
    |> WordpressTaxonomy.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Finds a Wordpress Taxonomy by opta_id.

  ## Examples

      iex> find_wordpress_taxonomy_by_opta_id(123)
      %OptaplayPlayer{}

      iex> find_wordpress_taxonomy_by_opta_id(456)
      nil
  """
  def find_wordpress_taxonomy_by_opta_id(opta_id) do
    Repo.get_by(WordpressTaxonomy, opta_id: opta_id)
  end

    @doc """
  Finds a Wordpress Taxonomy by slug.

  ## Examples

      iex> find_wordpress_taxonomy_by_slug(123)
      %OptaplayPlayer{}

      iex> find_wordpress_taxonomy_by_slug(456)
      nil
  """
  def find_wordpress_taxonomy_by_slug(slug) do
    Repo.get_by(WordpressTaxonomy, slug: slug)
  end

    @doc """
  Updates a wordpress_taxonomy.

  ## Examples

      iex> update_wordpress_taxonomy(wordpress_taxonomy, %{field: new_value})
      {:ok, %WordpressPlayer{}}

      iex> update_wordpress_taxonomy(wordpress_taxonomy, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_wordpress_taxonomy_by_opta_id(opta_id, attrs) do
    case find_wordpress_taxonomy_by_opta_id(opta_id) do
      %WordpressTaxonomy{} = wordpress_taxonomy ->
        wordpress_taxonomy
        |> WordpressTaxonomy.changeset(attrs)
        |> Repo.update()
      nil ->
        {:error, :not_found}
    end
  end

  @doc """
  Deletes a wordpress_taxonomy.

  ## Examples

      iex> delete_wordpress_taxonomy(wordpress_taxonomy)
      {:ok, %WordpressTaxonomy{}}

      iex> delete_wordpress_taxonomy(wordpress_taxonomy)
      {:error, %Ecto.Changeset{}}

  """
  def delete_wordpress_taxonomy_by_opta_id(%WordpressTaxonomy{} = wordpress_taxonomy) do
    Repo.delete(wordpress_taxonomy)
  end

  def delete_wordpress_taxonomy_by_opta_id(opta_id) do
    case find_wordpress_taxonomy_by_opta_id(opta_id) do
      %WordpressTaxonomy{} = wordpress_taxonomy ->
        delete_wordpress_taxonomy_by_opta_id(wordpress_taxonomy)
      nil ->
        {:error, :not_found}
    end
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking wordpress_taxonomy changes.

  ## Examples

      iex> change_wordpress_taxonomy(wordpress_taxonomy)
      %Ecto.Changeset{data: %WordpressTaxonomy{}}

  """
  def change_wordpress_taxonomy(%WordpressTaxonomy{} = wordpress_taxonomy, attrs \\ %{}) do
    WordpressTaxonomy.changeset(wordpress_taxonomy, attrs)
  end
end
