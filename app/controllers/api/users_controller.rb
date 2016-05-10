module Api
  class UsersController < ApplicationController
    before_filter :authenticate_user!, except: [:create, :index]

    validates_uniqueness_of :email, message: "Sorry an account with that email already exists"
    validates_presence_of :user_name

    def index
      @users = User.all
      render json: @users.to_json
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
  end
end
