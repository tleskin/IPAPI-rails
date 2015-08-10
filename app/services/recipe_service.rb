class RecipeService

  def all_recipes

    all_recipes = []
    recipes = Recipe.all
    recipes.each do |recipe|
      cr = ConstructRecipe.new
      cr.name = recipe.name
      cr.style = recipe.beer_types.first.name
      cr.description = recipe.description
      cr.instructions = recipe.instructions
      cr.gravity = recipe.gravity
      cr.ingredients = recipe.ingredients
      all_recipes << cr
    end
    all_recipes
  end

end

class ConstructRecipe < OpenStruct

end
