class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :purchase_date, :expiration_date, :in_freezer, :category_id
end
