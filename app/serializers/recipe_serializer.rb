class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :ingredients_detail, :source_url, :publisher
end
