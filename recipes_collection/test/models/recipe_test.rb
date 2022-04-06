require "test_helper"

describe Recipe do
  describe 'validity' do
    let(:recipe) { Recipe.new }

    before do
      recipe.valid?
    end
    it "requires a user" do
      recipe.errors[:user].must_include "can't be blank"
    end
    it "requires a recipe link" do
      recipe.errors[:recipe_link].must_include "can't be blank"
    end

    it "requires a image link" do
      recipe.errors[:image_link].must_include "can't be blank"
    end

    it "requires a name" do
      recipe.errors[:name].must_include "can't be blank"
    end
    it "requires name to be unique for same user" do
      existing_recipe = create(:recipe)
      recipe.name = existing_recipe.name
      recipe.user = existing_recipe.user
      recipe.valid?

      recipe.errors[:name].must_include "has already been taken"

    end
    it "does not require name to be unique for different user" do
      existing_recipe = create(:recipe)
      recipe.name = existing_recipe.name
      recipe.valid?

      recipe.errors[:name].wont_include "has already been taken"

    end
    
  end
end

