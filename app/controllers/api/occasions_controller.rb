module Api
  class OccasionsController < ApplicationController

    def index
      @occasions = Occasion.all
      render json: @occasion.to_json
    end

    def show
      occasion = Occasion.find(params[:id])
      render json: occasion.to_json, status: 200
    end

    def create
      occasion = Occasion.new
      occasion.occasion_name = params[:occasion_name]
      if occasion.save
        render json: occasion.to_json, status: 201
      else
        render json: occasion.errors.to_jason
      end
    end
  end
end
