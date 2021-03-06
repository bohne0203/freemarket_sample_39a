require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FreemarketSample39a
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.require_master_key = false
    config.x.secrets = ActiveSupport::InheritableOptions.new(config_for(:secrets))
    config.secret_token = config.x.secrets.secret_key_base
  end
end
