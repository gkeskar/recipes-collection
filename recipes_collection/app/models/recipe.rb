class Recipe < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: { scope: :user_id}
  validates :recipe_link, presence: true
  validates :image_link, presence: true
  validates :user, presence: true
end
