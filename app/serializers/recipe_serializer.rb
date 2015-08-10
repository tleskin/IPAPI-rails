class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructions, :time_to_make, :gravity
  has_many :ingredients
  belongs_to :beer_types
end
