class ApplicationController < ActionController::Base
  include SessionsHelper

  privante
  
    def require_logged_in_user
      unless user_signed_in?
        flash[:danger] = 'Area restrista. Por favor, realize o login'
        redirect_to entrar_path
      end
    end

end
