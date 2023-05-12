defmodule SuperhappytmWeb.Types.WordpressTaxonomyTypes do
  use Absinthe.Schema.Notation

  object :wordpress_taxonomy do
    field :opta_id, :string
    field :wordpress_id, :integer
    field :slug, :string
    field :type, :string
    field :competition, :string
  end

  input_object :wordpress_taxonomy_input do
    field :opta_id, :string
    field :wordpress_id, :integer
    field :slug, :string
    field :type, :string
    field :competition, :string
  end

end
