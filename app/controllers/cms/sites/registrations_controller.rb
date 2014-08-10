module Cms
  module Sites
    class RegistrationsController < Devise::RegistrationsController
      include Cms::ContentPage
      helper AuthenticationHelper

      before_action :configure_permitted_parameters, if: :devise_controller?

      template :default

      def new
        use_page_title('Register')
        super
      end

      def create
        use_page_title('Register')
        super
      end

      protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) << :email
      end

    end
  end
end
