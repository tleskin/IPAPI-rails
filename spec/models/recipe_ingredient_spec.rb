require 'rails_helper'

RSpec.describe RecipeIngredient, type: :model do

  let!(:recipe) { create(:recipe1) }
  let!(:ingredient1) { create(:ingredient1) }
  let!(:ingredient2) { create(:ingredient2) }

  before(:each) do
    recipe.ingredients << ingredient1
    recipe.ingredients << ingredient2
  end

  it "has many ingredients" do
    expect(recipe.ingredients.count).to eq(2)
  end

  it 'has ingredients' do
    expect(recipe).to respond_to(:ingredients)
  end

  it 'has an amount' do
    expect(recipe).to respond_to(:ingredients)
  end
end
