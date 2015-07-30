class Recipe < ActiveRecord::Base
  validates :name, :description, :instructions, presence: true
  has_many :beer_recipe_types
  has_many :beer_types, through: :beer_recipe_types
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :amounts
end
