class RemoveImageLinkFromRecipes < ActiveRecord::Migration[5.1]
  def change
    remove_column :recipes, :image_link, :string
  end
end
