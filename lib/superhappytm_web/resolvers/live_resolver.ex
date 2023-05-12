defmodule SuperhappytmWeb.LiveResolver do

  alias Superhappytm.Live

  def all_live_matches(_root, _args, _info) do
    {:ok, Live.list_live_matches()}
  end

  def create_live_match(_root, args, _info) do
    with {:ok, live_match} <- Live.create_live_match(args) do
      {:ok, live_match}
    else
      {:error, :validation_failed} ->
        {:error, "Validation failed. Please check your input."}
      {:error, :database_error} ->
        {:error, "Database error. Failed to create item."}
      _ ->
        {:error, "Unknown error occurred during item creation."}
    end
  end

  def find_live_match_by_opta_id(%{opta_id: opta_id}, _info) do
    case opta_id do
      nil ->
        {:error, "opta_id is nil"}
      _ ->
        case Live.find_live_match_by_opta_id(opta_id) do
          %Live.Match{} = live_match ->
            {:ok, live_match}
          nil ->
            {:error, "L'élément n'a pas été trouvé."}
          _ ->
            {:error, "Unknown error occurred during item creation."}
        end
    end
  end

  def update_live_match_by_opta_id(_root, %{opta_id: opta_id, input: input}, _info) do
    case Live.update_live_match_by_opta_id(opta_id, input) do
      {:ok, live_match} ->
        {:ok, live_match}
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

  def delete_live_match_by_opta_id(_root, %{opta_id: opta_id}, _info) do
    case Live.delete_live_match_by_opta_id(opta_id) do
      {:ok, _} ->
        {:ok, "Live Match deleted successfully."}
      {:error, :not_found} ->
        {:error, "Live Match not found."}
      _ ->
        {:error, "Unknown error occurred while deleting the player."}
    end
  end
end
