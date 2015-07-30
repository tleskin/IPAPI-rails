FactoryGirl.define do

  factory :ingredient1, class: Ingredient do
     name "Calypso Hop"
     category "Hop"
   end

  factory :ingredient2, class: Ingredient do
    name "Briess Carapils"
    category "Grain"
  end

  factory :ingredient3, class: Ingredient do
     name "Pilsen DME"
     category "Grain"
   end

 factory :ingredient4, class: Ingredient do
    name "Corn Sugar"
    category "Other"
  end

  factory :ingredient5, class: Ingredient do
    name " Bairds Carastan"
    category "Hop"
  end

  factory :ingredient6, class: Ingredient do
    name "Columbus"
    category "Hop"
  end

  factory :ingredient7, class: Ingredient do
    name "Hopshot"
    category "Hop"
  end
end
