require 'rails_helper'

RSpec.describe Recipe, type: :model do

  let!(:recipe) { create(:recipe1) }

  it "has a name" do
    expect(recipe.name).to eq("IPA1")
  end

  it "is invalid without a name" do
    recipe.name = ""
    expect(recipe).not_to be_valid
  end

  it "has a description" do
    expect(recipe.description).to eq("This is IPA1")
  end

  it "is invalid without a description" do
    recipe.description = ""
    expect(recipe).not_to be_valid
  end

  it "has instructions" do
    expect(recipe.instructions).to eq("Make IPA1 like this")
  end

  it "is invalid without instructions" do
    recipe.instructions = ""
    expect(recipe).not_to be_valid
  end
end
