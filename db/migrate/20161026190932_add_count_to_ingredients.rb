class AddCountToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :count, :integer, :default => 0
  end
end
