class BeerRecipeType < ActiveRecord::Base
  belongs_to :beer_type
  belongs_to :recipe
end
