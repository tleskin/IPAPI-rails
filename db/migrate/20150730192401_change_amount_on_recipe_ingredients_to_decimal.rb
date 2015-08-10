class ChangeAmountOnRecipeIngredientsToDecimal < ActiveRecord::Migration
  def change
    change_column :recipe_ingredients, :amount, :integer
  end
end
