class Amount < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe
  has_many :ingredients
  has_many :recipes
end
