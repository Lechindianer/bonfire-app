import Config

# We include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.
config :bonfire, Bonfire.Web.Endpoint, cache_static_manifest: "priv/static/cache_manifest.json"

config :logger,
  backends: [:console, Sentry.LoggerBackend]

# Do not print debug messages in production
config :logger, level: :info

config :bonfire, Bonfire.Web.Endpoint, server: true

config :bonfire_umbrella, Bonfire.Common.Repo,
  # in releases migrations are not in a flavour-specific directory
  priv: "priv/repo"

# default federating state
config :activity_pub, :instance, federating: false

# config :surface, :compiler, warn_on_undefined_props: false

config :live_view_native_stylesheet,
  annotations: false,
  pretty: false
