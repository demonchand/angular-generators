require "rails/generators/base"

module Angular
  class InitGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_initializer
      puts "Copy initiater triggered"
    end
  end
end
