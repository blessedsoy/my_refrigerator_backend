class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.date :purchase_date
      t.date :expiration_date
      t.boolean :in_freezer
      t.integer :category_id

      t.timestamps
    end
  end
end
