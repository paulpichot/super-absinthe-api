defmodule SuperhappytmWeb.WordpressResolver do

  alias Superhappytm.Wordpress

  def all_wordpress_players(_root, _args, _info) do
    {:ok, Wordpress.list_wordpress_players()}
  end

  def create_wordpress_player(_root, args, _info) do
    with {:ok, wordpress_player} <- Wordpress.create_wordpress_player(args) do
      {:ok, wordpress_player}
    else
      {:error, :validation_failed} ->
        {:error, "Validation failed. Please check your input."}
      {:error, :database_error} ->
        {:error, "Database error. Failed to create item."}
      _ ->
        {:error, "Unknown error occurred during item creation."}
    end
  end

  def find_wordpress_player_by_opta_id(%{opta_id: opta_id}, _info) do
    case opta_id do
      nil ->
        {:error, "opta_id is nil"}
      _ ->
        case Wordpress.find_wordpress_player_by_opta_id(opta_id) do
          %Wordpress.WordpressPlayer{} = wordpress_player ->
            {:ok, wordpress_player}
          nil ->
            {:error, "L'élément n'a pas été trouvé."}
          _ ->
            {:error, "Unknown error occurred during item creation."}
        end
    end
  end

  def update_wordpress_player_by_opta_id(_root, %{opta_id: opta_id, input: input}, _info) do
    case Wordpress.update_wordpress_player_by_opta_id(opta_id, input) do
      {:ok, wordpress_player} ->
        {:ok, wordpress_player}
      {:error, :not_found} ->
        {:error, "L'élément n'a pas été trouvé."}
      {:error, :validation_failed} ->
        {:error, "La validation a échoué. Veuillez vérifier vos entrées."}
      {:error, :database_error} ->
        {:error, "Erreur de base de données. Impossible de mettre à jour l'élément."}
      _ ->
        {:error, "Unknown error occurred while updating item."}
    end
  end

  def delete_wordpress_player_by_opta_id(_root, %{opta_id: opta_id}, _info) do
    case Wordpress.delete_wordpress_player_by_opta_id(opta_id) do
      {:ok, _} ->
        {:ok, "Player deleted successfully."}
      {:error, :not_found} ->
        {:error, "Player not found."}
      _ ->
        {:error, "Unknown error occurred while deleting the player."}
    end
  end


  def all_wordpress_taxonomies(_root, _args, _info) do
    {:ok, Wordpress.list_wordpress_taxonomies()}
  end

  def create_wordpress_taxonomy(_root, args, _info) do
    with {:ok, wordpress_taxonomy} <- Wordpress.create_wordpress_taxonomy(args) do
      {:ok, wordpress_taxonomy}
    else
      {:error, :validation_failed} ->
        {:error, "Validation failed. Please check your input."}
      {:error, :database_error} ->
        {:error, "Database error. Failed to create item."}
      _ ->
        {:error, "Unknown error occurred during item creation."}
    end
  end

  def find_wordpress_taxonomy_by_opta_id(%{opta_id: opta_id}, _info) do
    case opta_id do
      nil ->
        {:error, "opta_id is nil"}
      _ ->
        case Wordpress.find_wordpress_taxonomy_by_opta_id(opta_id) do
          %Wordpress.WordpressTaxonomy{} = wordpress_taxonomy ->
            {:ok, wordpress_taxonomy}
          nil ->
            {:error, "L'élément n'a pas été trouvé."}
          _ ->
            {:error, "Unknown error occurred during item creation."}
        end
    end
  end

  def find_wordpress_taxonomy_by_slug(%{slug: slug}, _info) do
    case slug do
      nil ->
        {:error, "slug is nil"}
      _ ->
        case Wordpress.find_wordpress_taxonomy_by_slug(slug) do
          %Wordpress.WordpressTaxonomy{} = wordpress_taxonomy ->
            {:ok, wordpress_taxonomy}
          nil ->
            {:error, "L'élément n'a pas été trouvé."}
          _ ->
            {:error, "Unknown error occurred during item creation."}
        end
    end
  end

  def update_wordpress_taxonomy_by_opta_id(_root, %{opta_id: opta_id, input: input}, _info) do
    case Wordpress.update_wordpress_taxonomy_by_opta_id(opta_id, input) do
      {:ok, wordpress_taxonomy} ->
        {:ok, wordpress_taxonomy}
      {:error, :not_found} ->
        {:error, "L'élément n'a pas été trouvé."}
      {:error, :validation_failed} ->
        {:error, "La validation a échoué. Veuillez vérifier vos entrées."}
      {:error, :database_error} ->
        {:error, "Erreur de base de données. Impossible de mettre à jour l'élément."}
      _ ->
        {:error, "Unknown error occurred while updating item."}
    end
  end

  def delete_wordpress_taxonomy_by_opta_id(_root, %{opta_id: opta_id}, _info) do
    case Wordpress.delete_wordpress_taxonomy_by_opta_id(opta_id) do
      {:ok, _} ->
        {:ok, "Player deleted successfully."}
      {:error, :not_found} ->
        {:error, "Player not found."}
      _ ->
        {:error, "Unknown error occurred while deleting the player."}
    end
  end
end
