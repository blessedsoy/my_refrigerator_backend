class Recipe < ApplicationRecord
  serialize :ingredients_detail, Array
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  
end
