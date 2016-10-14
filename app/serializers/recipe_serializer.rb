class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :ingredients_detail, :source_url, :publisher
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
end
