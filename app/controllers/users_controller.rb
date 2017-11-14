class UsersController < ApplicationController
    def index
        @user = User.new
        @user.full_name = params[:full_name]
        @user.street = params[:street]
        @user.city = params[:city]
        @user.state = params[:state]
        @user.postal = params[:postal]
        @user.country = params[:country]
        @user.email = params[:email]
        @user.user_name = params[:user_name]
        @user.password = params[:password]
        @user.save
        redirect_to '/login'
    end

    def register
    end

    def home
        @user = User.find_by_user_name(params[:user_log])
        if @user == nil
            flash[:notice] = "Invalid username!"
            redirect_to '/login'
        elsif params[:user_log] == @user.user_name && params[:pass_log] == @user.password
            render 'home.html.erb'
        else
            redirect_to '/login'
            flash[:notice] = "Invalid credentials!"
        end
    end

    def login
    end
end
