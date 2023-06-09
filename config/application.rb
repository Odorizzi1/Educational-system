require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Knowleadge
  class Application < Rails::Application
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:3001' # <-- Altere para a URL do seu frontend
        resource '*', headers: :any, methods: [:get, :post, :put, :delete, :options]
      end
    end
  end
end
