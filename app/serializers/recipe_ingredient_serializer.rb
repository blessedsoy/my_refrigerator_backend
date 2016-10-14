class RecipeIngredientSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :ingredient_id
  belongs_to :recipe 
  belongs_to :ingredient
end
