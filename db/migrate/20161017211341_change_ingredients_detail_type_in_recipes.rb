class ChangeIngredientsDetailTypeInRecipes < ActiveRecord::Migration[5.0]
  def change
    change_column :recipes, :ingredients_detail, :array
  end
end
