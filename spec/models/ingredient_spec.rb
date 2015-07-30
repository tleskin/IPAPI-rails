require 'rails_helper'

RSpec.describe Ingredient, type: :model do

  let!(:ingredient) { create(:ingredient1) }

  it "has a name" do
    expect(ingredient.name).to eq("Calypso Hop")
  end

  it "is invalid without a name" do
    ingredient.name = ""
    expect(ingredient).not_to be_valid
  end

  it "has a category" do
    expect(ingredient.category).to eq("Hop")
  end

  it "is invalid without a category" do
    ingredient.category = ""
    expect(ingredient).not_to be_valid
  end
end
