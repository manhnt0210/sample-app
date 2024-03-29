Rails.application.configure do

  config.cache_classes = true

  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

  config.assets.js_compressor = :uglifier

  config.assets.compile = false

  config.active_storage.service = :local

  config.log_level = :debug

  config.log_tags = [ :request_id ]

  config.action_mailer.perform_caching = false


  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false


  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_caching = true
  config.action_mailer.perform_deliveries = true
  config.action_mailer.default :charset => "utf-8"
  host = "localhost:3000"
  config.action_mailer.default_url_options = { host: host, protocol: "http" }
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "gmail.com",
    authentication: :plain,
    enable_starttls_auto: true,
    user_name: ENV["GMAIL"],
    password: ENV["PASS"]
  }
end
