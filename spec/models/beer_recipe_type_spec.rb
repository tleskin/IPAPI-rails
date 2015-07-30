require 'rails_helper'

RSpec.describe BeerRecipeType, type: :model do


  let!(:beer_type) { create(:beer_type1) }
  let!(:recipe1) { create(:recipe1) }
  let!(:recipe2) { create(:recipe2) }

  before(:each) do
    beer_type.recipes << recipe1
    beer_type.recipes << recipe2
  end

  it "it has a recipe relationship" do
    expect(beer_type.recipes.count).to eq(2)
    expect(beer_type.recipes.first.name).to eq("IPA1")
  end

end
