module SpreeAssetable
  module Generators
    class InstallGenerator < Rails::Generators::Base

      class_option :auto_run_migrations, :type => :boolean, :default => false

      def add_javascripts
        append_file 'app/assets/javascripts/application.js', "\n//= require store/spree_assetable\n"
      end

      def add_stylesheets
        append_file 'app/assets/stylesheets/application.css.sass', "\n@import spree_assetable\n"
      end

    end
  end
end
