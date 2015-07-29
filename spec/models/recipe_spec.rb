require 'rails_helper'

RSpec.describe Recipe, type: :model do

  let(:recipe) {Recipe.create!(name: "Tom's Pumpkin Ale",
                              description: "Super Good",
                              instructions: "Mash some grains, boil it, ferment, carbonate, drink.")}

  it "has a name" do
    expect(recipe.name).to eq("Tom's Pumpkin Ale")
  end

  it "is invalid without a name" do
    recipe.name = ""
    expect(recipe).not_to be_valid
  end

  it "has a description" do
    expect(recipe.description).to eq("Super Good")
  end

  it "is invalid without a description" do
    recipe.description = ""
    expect(recipe).not_to be_valid
  end

  it "has instructions" do
    expect(recipe.instructions).to eq("Mash some grains, boil it, ferment, carbonate, drink.")
  end

  it "is invalid without instructions" do
    recipe.instructions = ""
    expect(recipe).not_to be_valid
  end

  it "has many ingredients" do
    recipe.ingredients.create(name: "Calypso",
                              category: "Hops")

    expect(recipe.ingredients.count).to eq(1)
  end

  it 'has ingredients' do
    expect(recipe).to respond_to(:ingredients)
  end
end
