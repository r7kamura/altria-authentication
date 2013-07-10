require "rails/railtie"

module Altria
  module Doorkeeper
    class Railtie < Rails::Engine
      initializer "altria.doorkeeper" do |app|
        require "altria/doorkeeper/initializer"

        unless app.root.to_s.match(root.to_s)
          app.config.paths["db/migrate"] << config.paths["db/migrate"].expanded.first
        end
      end
    end
  end
end
