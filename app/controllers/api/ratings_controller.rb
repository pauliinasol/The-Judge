module Api
  class RatingsController < ApplicationController

    def index
      @ratings = Rating.all
      render json: @ratings.to_json
    end

    def show
      rating = Rating.find(params[:id])
      render json: rating.to_json, status: 200
    end

    def create
      rating = Rating.new
      rating.outfit_id = params[:outfit_id]
      rating.positive = params[:positive]
      rating.negative = params[:negative]
      if rating.save
        render json: rating.to_json, status: 201
      else
        render json: rating.errors.to_jason
      end
    end
  end
end
