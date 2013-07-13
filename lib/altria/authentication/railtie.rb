require "rails/railtie"

module Altria
  module Authentication
    class Railtie < Rails::Engine
      initializer "altria.authentication" do |app|
        require "altria/authentication/initializers/controller"
        require "altria/authentication/initializers/devise"
        require "altria/authentication/initializers/doorkeeper"
        require "altria/authentication/initializers/routes"

        unless app.root.to_s.match(root.to_s)
          app.config.paths["db/migrate"] << config.paths["db/migrate"].expanded.first
        end
      end
    end
  end
end
