FactoryGirl.define do

  factory :recipe1, class: Recipe do
     name "IPA1"
     description "This is IPA1"
     instructions "Make IPA1 like this"
     gravity 7
     time_to_make "6 weeks"
   end

  factory :recipe2, class: Recipe do
    name "IPA2"
    description "This is IPA2"
    instructions "Make IPA1 like this"
    gravity 9
    time_to_make "9 weeks"
  end

  factory :recipe3, class: Recipe do
   name "IPA2"
   description "This is IPA2"
   instructions "Make IPA2 like this"
   gravity 6
   time_to_make "4 weeks"
  end

  factory :recipe4, class: Recipe do
     name "Stout1"
     description "This is Stout1"
     instructions "Make Stout1 like this"
     gravity 5
     time_to_make "4 weeks"
   end

  factory :recipe5, class: Recipe do
    name "Stout2"
    description "This is Stout2"
    instructions "Make Stout2 like this"
    gravity 9
    time_to_make "9 weeks"
  end

  factory :recipe6, class: Recipe do
   name "Stout3"
   description "This is Stout3"
   instructions "Make Stout3 like this"
   gravity 6
   time_to_make "4 weeks"
  end

  factory :recipe7, class: Recipe do
     name "Belgian1"
     description "This is Belgian1"
     instructions "Make Belgian1 like this"
     gravity 7
     time_to_make "6 weeks"
   end

  factory :recipe8, class: Recipe do
    name "Belgian2"
    description "This is Belgian2"
    instructions "Make Belgian2 like this"
    gravity 9
    time_to_make "9 weeks"
  end

  factory :recipe9, class: Recipe do
   name "Belgian3"
   description "This is Belgian3"
   instructions "Make Belgian3 like this"
   gravity 6
   time_to_make "4 weeks"
  end
end
