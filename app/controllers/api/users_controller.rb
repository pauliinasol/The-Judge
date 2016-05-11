module Api
  class UsersController < ApplicationController
    before_filter :authenticate_user!, except: [:create, :index]


    # validates_uniqueness_of :email, message: "Sorry an account with that email already exists"
    # validates_presence_of :user_name


    def index
      @users = User.all
    end

    def show
      user = User.find(params[:id])
      render json: user.to_json, status: 200
    end

    def create
      user = User.new
      user.user_name = params[:user_name]
      user.email = params[:email]
      user.password_digest = params[:password]
      if user.save
        render json: user.to_json, status: 201
      else
        render json: user.errors.to_json
      end
    end

    def current_user
    User.find_by(id: session[:user_id])
    end

    def logged_in?
      if current_user
        return true
      else
        return false
      end
    end

    def login
      User.find_by(email: params[:email])

      if user && user.authenticate(params[:password])

        session[:user_id] = user.id

        render json: user.to_json, status: 201
      else
        render json: user.errors.to_json
      end
    end
  end
end
