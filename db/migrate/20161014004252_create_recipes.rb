class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :image_url
      t.text :ingredients_detail
      t.string :source_url
      t.string :publisher

      t.timestamps
    end
  end
end
