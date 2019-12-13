class SessionsController < ApplicationController
    def new
    end

    def create 
        user = User.find_by({name: params[:session][:name]})
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id.to_s
            redirect_to user_path(user)
        else
            redirect_to root_path
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end
end
