class ChangeColumnNameInRecipes < ActiveRecord::Migration[5.0]
  def change
    rename_column :recipes, :recipe_id, :reference_id
  end
end
