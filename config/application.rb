# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

require 'rspotify'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rubymusic
  # Application class
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those
    # specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    spotify_client_id = Rails.application.credentials.development[:spotify][:access_key_id]
    spotify_client_secret = Rails.application.credentials.development[:spotify][:secret_access_key]
    RSpotify::authenticate(spotify_client_id.to_s, spotify_client_secret.to_s)
  end
end
