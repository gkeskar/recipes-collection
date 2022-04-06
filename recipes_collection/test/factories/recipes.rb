FactoryGirl.define do
  factory :recipe do
    name "Mom's Spaghetti"
    recipe_link "https://recipe.com"
    image_link "https://image.com"
    association(:user)
  end
end
