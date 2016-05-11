module Api
  class LikesController < ApplicationController

    def create
      like = Like.new
      like.outfit_id = params[:outfit_id]
      like.count = params[:like]
      if like.save
        render json: like.to_json, status: 201
      else
        render json: like.errors.to_jason
      end
    end
  end
end
