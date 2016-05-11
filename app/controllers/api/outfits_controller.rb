module Api
  class OutfitsController < ApplicationController

    def index
      @outfits = Outfit.all
      render json: @outfits.to_json
    end

    def show
      outfit = Outfit.find(params[:id])
      render json: outfit.to_json, status: 200
    end

    def create
      outfit = Outfit.new
      outfit.user_id = params[:user_id]
      outfit.occasion_id = params[:occasion_id]
      outfit.rating_id = params[:rating_id]
      outfit.photo = params[:photo]
      outfit.start_datetime = params[:start]
      outfit.end_datetime = params[:end]
      if outfit.save
        render json: outfit.to_json, status: 201
      else
        render json: outfit.errors.to_jason
      end
    end

    def upload
      
    end
  end
end
