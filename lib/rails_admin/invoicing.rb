# frozen_string_literal: true

module RailsAdmin
  module Config
    module Actions
      class Invoicing < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)
        register_instance_option :root do
          true
        end
        register_instance_option :link_icon do
          'icon-shopping-cart'
        end
        register_instance_option :pjax? do
          true
        end
        register_instance_option :controller do
          proc do
          end
        end
      end
    end
  end
end
