class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        @current_user ||=User.find(session[:user_id]) if session[:user_id]
    end

    def authorise
        redirect_to root_path if current_user.nil?
    end
end
