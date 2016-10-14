class Ingredient < ApplicationRecord
  
  validates :name, uniqueness: true
  belongs_to :category
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  
end
