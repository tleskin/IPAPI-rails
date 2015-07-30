FactoryGirl.define do

  factory :amount1, class: Amount do
    amount 5
    ingredient_id 1
    recipe_id 1
   end

  factory :amount2, class: Amount do
    amount 10
    ingredient_id 2
    recipe_id 1
  end
end
