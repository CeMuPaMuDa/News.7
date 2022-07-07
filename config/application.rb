require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
# require "action_cable/engine"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module News7
  class Application < Rails::Application
    config.load_defaults 7.0
    config.generators.system_tests = nil
    config.i18n.available_locales = %i[en ru uk]
    config.i18n.default_locale = :uk
    config.time_zone = 'Kyiv'
    config.generators do |g|
      g.orm              :active_record
      g.template_engine  :slim
      g.system_tests     nil
      g.test_framework   nil
      g.helper           false
      g.stylesheets      false
      g.javascripts      false
    end
  end
end
