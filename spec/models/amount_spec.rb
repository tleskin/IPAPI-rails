require 'rails_helper'

RSpec.describe Amount, type: :model do

  let!(:recipe) { create(:recipe1) }
  let!(:ingredient1) { create(:ingredient1) }
  let!(:ingredient2) { create(:ingredient2) }
  let!(:amount1) { create(:amount1) }
  let!(:amount2) { create(:amount2) }

  before(:each) do
    recipe.ingredients << ingredient1
    recipe.ingredients << ingredient2
    recipe.ingredients.first.amounts << amount1
    recipe.ingredients.last.amounts << amount2
  end

  it "has an amount for an ingredient that equals ingredient amount" do
    expect(recipe.ingredients.count).to eq(2)
    expect(recipe.amounts.count).to eq(2)
    expect(recipe.amounts.first.amount).to eq(5)
  end
end
