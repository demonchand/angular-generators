require 'generators/angular'

module Angular
  module Generators
    class InitGenerator < Base


      # Create the Angular Directory structere and Base files
      def copy_initializer
        angular_path = "app/assets/javascripts/angular/"

        template "base.js.coffee", angular_path + "#{rails_application_name}App.js.coffee"
        template "controllers.js.coffee", angular_path + "controllers.js.coffee"
        template "services.js.coffee", angular_path + "services.js.coffee"
        template "directives.js.coffee", angular_path + "directives.js.coffee"
        template "filters.js.coffee", angular_path + "filters.js.coffee"
        template "application_controller.js.coffee", angular_path + "controllers/application_controller.js.coffee"
        template "routes.js.coffee", angular_path + "services/routes.js.coffee"

        include_js_and_css
      end

      private

      def include_js_and_css
        puts
        puts "Add the following changes to your application layout"
        puts
        puts red "- <html>"
        puts green "+ <html ng-app='#{rails_application_name}App' ng-controller='ApplicationController' ng-init='initialize()'>"
        puts
        puts green "+ <%= javascript_include_tag 'https://ajax.googleapis.com/ajax/libs/angularjs/1.2.22/angular.min.js' %>"
        puts green "+ <%= javascript_include_tag 'https://ajax.googleapis.com/ajax/libs/angularjs/1.2.22/angular-sanitize.min.js' %>"
        puts
      end
    end
  end
end
