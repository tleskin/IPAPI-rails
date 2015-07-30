class RemoveAmountFromRecipeIngredients < ActiveRecord::Migration
  def change
    remove_column :recipe_ingredients, :amount, :integer  
  end
end
