require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module TestZimadMain
  class Application < Rails::Application
    config.load_defaults 6.0
    config.autoload_paths += %W(#{config.root}/lib)
    config.autoload_paths += Dir["#{config.root}/lib/**/"]
  end
end
