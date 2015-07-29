require 'rails_helper'

RSpec.describe BeerType, type: :model do

    let(:beer_type) {BeerType.create!(name: "Stout")}
    let(:recipe) {beer_type.recipes.create!(name: "Kenny's Super Stout",
                                description: "Super Real Good",
                                instructions: "Mash some grains, boil it, ferment, carbonate, drink.")}

  it "has a name" do
    expect(beer_type.name).to eq("Stout")
  end

  it "is invalid without a name" do
    beer_type.name = ""
    expect(beer_type).not_to be_valid
  end

  it "it has recipe relationship yo" do
    beer_type.recipes.create(name: "Kenny's Super Stout",
                                description: "Super Real Good",
                                instructions: "Mash some grains")
    expect(beer_type.recipes.count).to eq(1)
    expect(beer_type.recipes.first.name).to eq("Kenny's Super Stout")
  end
end
