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

        #copy_file "initializer.rb", "public/#{plural_name}.rb"
        template "initializer.rb", "public/#{plural_name}.rb"
      end

      private
      
      def plural_name
        scaffold_name.underscore.pluralize
      end

      def app_name
      end
      
    end
  end
end
