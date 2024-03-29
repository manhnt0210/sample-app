require_relative 'boot'
require "rails"

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    config.load_defaults 5.2
    config.i18n.default_locale = :en
    config.generators.system_tests = nil
    config.action_view.embed_authenticity_token_in_remote_forms = true
  end
end
