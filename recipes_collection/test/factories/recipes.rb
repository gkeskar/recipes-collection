FactoryGirl.define do
  factory :recipe do
    name { Faker::Hipster.sentence }
    recipe_link { Faker::Internet.url }
    association(:user)
  end
end
