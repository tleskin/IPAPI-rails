class BeerType < ActiveRecord::Base
  validates :name, presence: true
  has_many :beer_recipe_types
  has_many :recipes, through: :beer_recipe_types
end
