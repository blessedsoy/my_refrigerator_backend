class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :purchase_date, :expiration_date, :in_freezer, :category_id
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
end
