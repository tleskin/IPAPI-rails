FactoryGirl.define do

  factory :amount1, class: Amount do
    ounces 5
    ingredient_id 1
    recipe_id 1
   end

  factory :amount2, class: Amount do
    ounces 10
    ingredient_id 2
    recipe_id 1
  end
end
