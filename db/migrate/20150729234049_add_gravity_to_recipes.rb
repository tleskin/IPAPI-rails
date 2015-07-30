class AddGravityToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :gravity, :string
    add_column :recipes, :time_to_make, :string
  end
end
