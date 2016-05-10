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

    # def create
    #   dish = Dish.new
    #   dish.name = params[:name]
    #   dish.image_url = params[:image_url]
    #   if dish.save
    #     render json: dish.to_json(methods: :like_count), status: 201
    #   else
    #     render json: dish.errors.to_jason
    #   end
    # end

  end
end
