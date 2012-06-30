module Wysihtml5n
  module Rails
    class Engine < ::Rails::Engine
      initializer 'wysihtml5n-rails.setup', :after => 'append_asset_paths', :group => :all do |app|
        app.config.assets.paths << File.join(config.root, 'vendor', "assets", "fonts")
      end
      # Make rails recognize vendored assets
    end
  end
end