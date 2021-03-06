# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :event_page_viewer_web,
  namespace: EventPageViewer.Web,
  ecto_repos: [EventPage.Repo]

# Configures the endpoint
config :event_page_viewer_web, EventPageViewer.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GatdYPTdms4VeEwOBOweNqEhQYmIhfXHg0MP7b5tcnwg/opCPQ3zegJFtsBAhHkD",
  render_errors: [view: EventPageViewer.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EventPageViewer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :event_page_web, :generators,
  context_app: :event_page


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
