# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :superhappytm,
  ecto_repos: [Superhappytm.Repo]

# Configures the endpoint
config :superhappytm, SuperhappytmWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [
    formats: [json: SuperhappytmWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: Superhappytm.PubSub,
  live_view: [signing_salt: "mZlNhE1W"]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :superhappytm, Superhappytm.Mailer, adapter: Swoosh.Adapters.Local

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Configure Absinthe
config :superhappytm, SuperhappytmWeb.Schema,
  schema: SuperhappytmWeb.Schema,
  context: %{
    pubsub: Superhappytm.PubSub,
    # Ajoutez d'autres valeurs de contexte si nécessaire
  }

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
