import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mauction_web, MauctionWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "5MAYbT08GX+DWzz082sHWpd5Wy9jefrZaDmi2wz4nnREhw7f877bj7hQfIG2lkQX",
  server: false