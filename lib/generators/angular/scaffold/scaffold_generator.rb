require 'generators/angular'
require 'rails/generators/generated_attribute'

module Angular
  module Generators
    class ScaffoldGenerator < Base
      no_tasks { attr_accessor :scaffold_name }
      
      argument :scaffold_name, :type => :string, :required => true, :banner => 'ModelName'
      
      def initialize(*args, &block)
        super
        print_usage unless scaffold_name.underscore =~ /^[a-z][a-z0-9_\/]+$/

        controllers_path = "app/assets/javascripts/angular/controllers"
        modules_path = "app/assets/javascripts/angular/services/models"
        index_path = "app/views/#{plural_name}"

        template "controller.js.coffee", controllers_path + "/#{plural_name}_controller.js.coffee"
        template "dialog_controller.js.coffee", controllers_path + "/#{plural_name}_dialog_controller.js.coffee"
        template "module.js.coffee", modules_path + "/#{scaffold_name}.js.coffee"
        template "index.html.erb", index_path + "/index.html.erb"
      end

      private
      
      def plural_name
        scaffold_name.underscore.pluralize
      end

      def singular_name
        scaffold_name.camelcase
      end
      
    end
  end
end
