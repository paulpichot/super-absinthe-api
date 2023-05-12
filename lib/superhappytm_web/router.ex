defmodule SuperhappytmWeb.Router do
  use SuperhappytmWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphql", Absinthe.Plug, schema: SuperhappytmWeb.Schema

    forward("/graphiql", Absinthe.Plug.GraphiQL,
      schema: SuperhappytmWeb.Schema,
      interface: :playground
    )
  end
end
