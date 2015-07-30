FactoryGirl.define do

  factory :beer_type1, class: BeerType do
    name "IPA"
   end

  factory :beer_type2, class: BeerType do
    name "Stout"
  end

  factory :beer_type3, class: BeerType do
    name "Belgian"
  end
end
