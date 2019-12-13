class UsersController < ApplicationController
    before_action :authorise, except: [:new, :create]

    def new
        @user = User.new
    end

    def index
        @users = User.All
    end

    def show
        @user = User.find(params[:id])
    end

    def create
        user = User.create(user_params)
        puts user.inspect
        redirect_to user_url(user)
    end

    def authorise
        return redirect_to root_path if current_user.nil?
        return redirect_to user_path(current_user) if (params[:id] && params[:id] != session[:user_id])
    end

    private 
    def user_params
        params.require(:user).permit(:name, :password, :is_host)
    end

end
