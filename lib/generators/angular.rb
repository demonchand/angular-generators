require 'rails/generators/base'

module Angular
  module Generators
    class Base < Rails::Generators::Base #:nodoc:
      def self.source_root
        @_nifty_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'angular', generator_name, 'templates'))
      end

      def self.banner
        "rails generate angular:#{generator_name} #{self.arguments.map{ |a| a.usage }.join(' ')} [options]"
      end

      private

      def print_usage
        self.class.help(Thor::Base.shell.new)
        exit
      end

      def rails_application_name
        Rails.application.class.name.split("::").first.camelcase(:lower)
      end

      def colorize(text, color_code)
        "\e[#{color_code}m#{text}\e[0m"
      end

      def red(text); colorize(text, 31); end
      def green(text); colorize(text, 32); end

    end
  end
end
