class RecipeService

  def all_recipes

    all_recipes = []
    recipes = Recipe.all
    recipes.each do |recipe|
      cr = ConstructRecipe.new
      cr.name = recipe.name
      cr.type_id = recipe.beer_types.first.id
      cr.description = recipe.description
      cr.instructions = recipe.instructions
      cr.gravity = recipe.gravity
      cr.ingredients = recipe.ingredients
      all_recipes << cr
    end
    all_recipes
  end

  def all_types

    all_types = []
    types = BeerType.all
    types.each do |type|
      cr = ConstructRecipe.new
      cr.id = type.id
      cr.name = type.name
      all_types << cr
    end
    all_types
  end

end

class ConstructRecipe < OpenStruct

end
