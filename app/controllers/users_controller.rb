class UsersController < ApplicationController
    
    def index
        @users = User.all
    end
    
    def main
        if session[:login_uid] != nil
            render "main"
        else
            render "login"
        end
    end
    
    def login
        if User.find_by(uid: params[:uid])
            session[:login_uid] = params[:uid]
            redirect_to top_main_path
            
        else
            render "error"
        end
    end
    
    def logout
        session.delete(:login_uid)
        redirect_to top_main_path
    end
    
    def create
        hashed_password = BCrypt::Password.create(params[:pass])
        user = User.new(uid: params[:uid], pass: hashed_password)
        user.save
        redirect_to top_main_path
    end
    
    def delete
        user = User.find(params[:uid])
        user.destroy
        redirect_to '/'
    end
end
