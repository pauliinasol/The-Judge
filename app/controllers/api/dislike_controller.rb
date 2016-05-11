module Api
  class DislikesController < ApplicationController

    def create
      dislike = Dislike.new
      dislike.outfit_id = params[:outfit_id]
      dislike.count = params[:like]
      if like.save
        render json: dislike.to_json, status: 201
      else
        render json: dislike.errors.to_jason
      end
    end
  end
end
