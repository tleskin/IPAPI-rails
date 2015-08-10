class Api::V1::RecipesController < ApplicationController
  respond_to :json

  def index
    recipes = RecipeService.new.all_recipes
    respond_with recipes
  end
end
