class CreateBeerRecipeTypes < ActiveRecord::Migration
  def change
    create_table :beer_recipe_types do |t|
      t.references :beer_type, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
