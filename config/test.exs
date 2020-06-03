use Mix.Config

# Configure your database
config :smart_note, SmartNote.Repo, pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :smart_note, Web.Endpoint,
  http: [port: 4002],
  server: false

config :smart_note, SmartNote.Mailer, adapter: Bamboo.TestAdapter

# Print only warnings and errors during test
config :logger, level: :warn

config :bcrypt_elixir, :log_rounds, 4

if File.exists?("config/test.extra.exs") do
  import_config("test.extra.exs")
end
