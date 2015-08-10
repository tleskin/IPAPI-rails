class Api::V1::RecipesController < ApplicationController
  respond_to :json

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def types
    @types = BeerType.all
    render json: @types
  end
end
