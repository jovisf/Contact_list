class ApplicationController < ActionController::Base
    # protect_from_forgery with :exception

    include SessionsHelper

    private
        def require_logged_in_user
            unless user_signed_in?
                flash[:danger] = "Aréa restrita a usuários"
                redirect_to entrar_path
            end
        end
end
