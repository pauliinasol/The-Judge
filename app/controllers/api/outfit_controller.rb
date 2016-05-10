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
      outfit.photo = params[:photo]
      if outfit.save
        render json: outfit.to_json status: 201
      else
        render json: outfit.errors.to_jason
      end
    end
  end
end
