class Ingredient < ActiveRecord::Base
  validates :name, :category, presence: true
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  has_many :amounts
end
