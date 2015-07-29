class RenameQuantityOnRecipeIngredients < ActiveRecord::Migration
  def change
    rename_column :recipe_ingredients, :quantity, :amount
  end
end
