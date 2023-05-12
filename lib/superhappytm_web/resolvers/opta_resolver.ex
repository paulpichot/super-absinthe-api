defmodule SuperhappytmWeb.OptaResolver do

  alias Superhappytm.Opta

  def all_optaplay_players(_root, _args, _info) do
    {:ok, Opta.list_optaplay_players()}
  end

  def create_optaplay_player(_root, args, _info) do
    with {:ok, optaplay_player} <- Opta.create_optaplay_player(args) do
      {:ok, optaplay_player}
    else
      {:error, :validation_failed} ->
        {:error, "Validation failed. Please check your input."}
      {:error, :database_error} ->
        {:error, "Database error. Failed to create item."}
      _ ->
        {:error, "Unknown error occurred during item creation."}
    end
  end

  def find_optaplay_player_by_opta_id(%{opta_id: opta_id}, _info) do
    case opta_id do
      nil ->
        {:error, "opta_id is nil"}
      _ ->
        case Opta.find_optaplay_player_by_opta_id(opta_id) do
          %Opta.OptaplayPlayer{} = optaplay_player ->
            {:ok, optaplay_player}
          nil ->
            {:error, "L'élément n'a pas été trouvé."}
          _ ->
            {:error, "Unknown error occurred during item creation."}
        end
    end
  end

  def update_optaplay_player_by_opta_id(_root, %{opta_id: opta_id, input: input}, _info) do
    case Opta.update_optaplay_player_by_opta_id(opta_id, input) do
      {:ok, optaplay_player} ->
        {:ok, optaplay_player}
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

  def delete_optaplay_player_by_opta_id(_root, %{opta_id: opta_id}, _info) do
    case Opta.delete_optaplay_player(opta_id) do
      {:ok, _} ->
        {:ok, "Player deleted successfully."}
      {:error, :not_found} ->
        {:error, "Player not found."}
      _ ->
        {:error, "Unknown error occurred while deleting the player."}
    end
  end


  @spec all_optarank_players(any, any, any) :: {:ok, any}
  def all_optarank_players(_root, _args, _info) do
    {:ok, Opta.list_optarank_players()}
  end

  def create_optarank_player(_root, args, _info) do
    with {:ok, optarank_player} <- Opta.create_optarank_player(args) do
      {:ok, optarank_player}
    else
      {:error, :validation_failed} ->
        {:error, "Validation failed. Please check your input."}
      {:error, :database_error} ->
        {:error, "Database error. Failed to create item."}
      _ ->
        {:error, "Unknown error occurred during item creation."}
    end
  end

  def find_optarank_player_by_opta_id(%{opta_id: opta_id}, _info) do
    case opta_id do
      nil ->
        {:error, "opta_id is nil"}
      _ ->
        case Opta.find_optarank_player_by_opta_id(opta_id) do
          %Opta.OptaplayPlayer{} = optarank_player ->
            {:ok, optarank_player}
          nil ->
            {:error, "L'élément n'a pas été trouvé."}
          _ ->
            {:error, "Unknown error occurred during item creation."}
        end
    end
  end

  def update_optarank_player_by_opta_id(_root, %{opta_id: opta_id, input: input}, _info) do
    case Opta.update_optarank_player_by_opta_id(opta_id, input) do
      {:ok, optarank_player} ->
        {:ok, optarank_player}
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

  def delete_optarank_player_by_opta_id(_root, %{opta_id: opta_id}, _info) do
    case Opta.delete_optarank_player_by_opta_id(opta_id) do
      {:ok, _} ->
        {:ok, "Player deleted successfully."}
      {:error, :not_found} ->
        {:error, "Player not found."}
      _ ->
        {:error, "Unknown error occurred while deleting the player."}
    end
  end
end
