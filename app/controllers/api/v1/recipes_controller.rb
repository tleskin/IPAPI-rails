class Api::V1::RecipesController < ApplicationController
  respond_to :json

  def index
    recipes = RecipeService.new.all_recipes
    respond_with recipes
  end

  def types
    types = RecipeService.new.all_types
    respond_with types
  end
end
