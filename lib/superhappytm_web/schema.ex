defmodule SuperhappytmWeb.Schema do
  use Absinthe.Schema

  alias SuperhappytmWeb.OptaResolver
  alias SuperhappytmWeb.WordpressResolver
  alias SuperhappytmWeb.LiveResolver

  import_types SuperhappytmWeb.Types.OptaplayPlayerTypes
  import_types SuperhappytmWeb.Types.OptarankPlayerTypes
  import_types SuperhappytmWeb.Types.WordpressPlayerTypes
  import_types SuperhappytmWeb.Types.WordpressTaxonomyTypes
  import_types SuperhappytmWeb.Types.MatchTypes

  query do
    @desc "Get all optaPlayers Players"
    field :all_optaplay_players, non_null(list_of(non_null(:optaplay_player))) do
      resolve(&OptaResolver.all_optaplay_players/3)
    end

    @desc "Find a optaPlayers Player by Opta Id"
    field :find_optaplay_player_by_opta_id, :optaplay_player do
      arg :opta_id, non_null(:string)
      resolve(&OptaResolver.find_optaplay_player_by_opta_id/2)
    end

    @desc "Get all optaRankings Players"
    field :all_optarank_players, non_null(list_of(non_null(:optarank_player))) do
      resolve(&OptaResolver.all_optarank_players/3)
    end

    @desc "Find a optaRankings Player by Opta Id"
    field :find_optarank_player_by_opta_id, :optarank_player do
      arg :opta_id, non_null(:string)
      resolve(&OptaResolver.find_optarank_player_by_opta_id/2)
    end

    @desc "Get all Wordpress Players"
    field :all_wordpress_players, non_null(list_of(non_null(:wordpress_player))) do
      resolve(&WordpressResolver.all_wordpress_players/3)
    end

    @desc "Find a Wordpress Player by Opta Id"
    field :find_wordpress_player_by_opta_id, :wordpress_player do
      arg :opta_id, non_null(:string)
      resolve(&WordpressResolver.find_wordpress_player_by_opta_id/2)
    end

    @desc "Get all Wordpress Taxonomies"
    field :all_wordpress_taxonomies, non_null(list_of(non_null(:wordpress_taxonomy))) do
      resolve(&WordpressResolver.all_wordpress_taxonomies/3)
    end

    @desc "Find a Wordpress Player by Opta Id"
    field :find_wordpress_taxonomy_by_opta_id, :wordpress_player do
      arg :opta_id, non_null(:string)
      resolve(&WordpressResolver.find_wordpress_taxonomy_by_opta_id/2)
    end

    @desc "Find a Wordpress Player by Slug"
    field :find_wordpress_taxonomy_by_slug, :wordpress_player do
      arg :slug, non_null(:string)
      resolve(&WordpressResolver.find_wordpress_taxonomy_by_slug/2)
    end

    @desc "Get all Live Matches"
    field :all_live_matches, non_null(list_of(non_null(:match))) do
      resolve(&LiveResolver.all_live_matches/3)
    end

    @desc "Find a Live Match by Opta Id"
    field :find_live_match_by_opta_id, :match do
      arg :opta_id, non_null(:string)
      resolve(&LiveResolver.find_live_match_by_opta_id/2)
    end
  end

  mutation do
    @desc "Create a new optaPlayers Player"
    field :create_optaplay_player, :optaplay_player do
      arg :alpha_code_country, :string
      arg :country_of_birth, :string
      arg :country_of_birth_id, :string
      arg :date_of_birth, :string
      arg :first_name, :string
      arg :gender, :string
      arg :height, :integer
      arg :last_name, :string
      arg :last_updated, :string
      arg :match_name, :string
      arg :nationality, :string
      arg :nationality_id, :string
      arg :opta_id, :string
      arg :place_of_birth, :string
      arg :weight, :integer

      resolve(&OptaResolver.create_optaplay_player/3)
    end

    @desc "Update an optaPlayers Player by Opta Id"
    field :update_optaplay_player_by_opta_id, :optaplay_player do
      arg :opta_id, non_null(:string)
      arg :input, non_null(:optaplay_player_input)
      resolve(&OptaResolver.update_optaplay_player_by_opta_id/3)
    end

    @desc "Delete an optaPlayers Playerby Opta Id"
    field :delete_optaplay_player_by_opta_id, :string do
      arg :opta_id, non_null(:string)
      resolve(&OptaResolver.delete_optaplay_player_by_opta_id/3)
    end

    @desc "Create a new optaRankings Player"
    field :create_optarank_player, :optarank_player do
      arg :alpha_code_country, :string
      arg :first_name, :string
      arg :last_name, :string
      arg :last_position, :integer
      arg :match_name, :string
      arg :nationality, :string
      arg :nationality_id, :string
      arg :opta_id, :string
      arg :points, :integer
      arg :position, :integer
      arg :tournaments_played, :integer

      resolve (&OptaResolver.create_optarank_player/3)
    end

    @desc "Update an optaRankings Player by Opta Id"
    field :update_optarank_player_by_opta_id, :optarank_player do
      arg :opta_id, non_null(:string)
      arg :input, non_null(:optarank_player_input)
      resolve(&OptaResolver.update_optarank_player_by_opta_id/3)
    end

    @desc "Delete an optaRankings Player by Opta Id"
    field :delete_optarank_player_by_opta_id, :string do
      arg :opta_id, non_null(:string)
      resolve(&OptaResolver.delete_optarank_player_by_opta_id/3)
    end

    @desc "Create a new Wordpress Player"
    field :create_wordpress_player, :wordpress_player do
      arg :opta_id, :string
      arg :wordpress_id, :integer

      resolve(&WordpressResolver.create_wordpress_player/3)
    end

    @desc "Update an Wordpress Player by Opta Id"
    field :update_wordpress_player_by_opta_id, :wordpress_player do
      arg :opta_id, non_null(:string)
      arg :input, non_null(:wordpress_player_input)
      resolve(&WordpressResolver.update_wordpress_player_by_opta_id/3)
    end

    @desc "Delete an Wordpress Player by Opta Id"
    field :delete_wordpress_player_by_opta_id, :string do
      arg :opta_id, non_null(:string)
      resolve(&WordpressResolver.delete_wordpress_player_by_opta_id/3)
    end

    @desc "Create a new Wordpress Taxonomy"
    field :create_wordpress_taxonomy, :wordpress_taxonomy do
      arg :opta_id, :string
      arg :wordpress_id, :integer

      resolve(&WordpressResolver.create_wordpress_taxonomy/3)
    end

    @desc "Update an Wordpress Taxonomy by Opta Id"
    field :update_wordpress_taxonomy_by_opta_id, :wordpress_taxonomy do
      arg :opta_id, non_null(:string)
      arg :input, non_null(:wordpress_taxonomy_input)
      resolve(&WordpressResolver.update_wordpress_taxonomy_by_opta_id/3)
    end

    @desc "Delete an Wordpress Taxonomy by Opta Id"
    field :delete_wordpress_taxonomy_by_opta_id, :string do
      arg :opta_id, non_null(:string)
      resolve(&WordpressResolver.delete_wordpress_taxonomy_by_opta_id/3)
    end

    @desc "Create a new Live Match"
    field :create_live_match, :match do
      arg :last_update, :string
      arg :opta_id, :string
      arg :set, :string
      arg :stats, :string

      resolve(&LiveResolver.create_live_match/3)
    end

    @desc "Update a Live Match by Opta Id"
    field :update_live_match_by_opta_id, :match do
      arg :opta_id, non_null(:string)
      arg :input, non_null(:match_input)
      resolve(&LiveResolver.update_live_match_by_opta_id/3)
    end

    @desc "Delete an Live Match by Opta Id"
    field :delete_live_match_by_opta_id, :string do
      arg :opta_id, non_null(:string)
      resolve(&LiveResolver.delete_live_match_by_opta_id/3)
    end
  end
end
