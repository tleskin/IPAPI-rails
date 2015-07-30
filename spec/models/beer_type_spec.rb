require 'rails_helper'

RSpec.describe BeerType, type: :model do

  let!(:beer_type) { create(:beer_type1) }

  it "has a name" do
    expect(beer_type.name).to eq("IPA")
  end

  it "is invalid without a name" do
    beer_type.name = ""
    expect(beer_type).not_to be_valid
  end
end
