# encoding: utf-8
require "rails/generators"
require "rails/generators/mongoid_generator"

module Mongoid
  module Generators
    class ObserverGenerator < Base
      check_class_collision suffix: "Observer"

      def self.source_root
        File.expand_path("../templates", __FILE__)
      end

      def create_observer_file
        template "observer.rb.tt", File.join("app/models", class_path, "#{file_name}_observer.rb")
      end

      hook_for :test_framework
    end
  end
end