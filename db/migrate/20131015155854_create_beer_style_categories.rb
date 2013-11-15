class CreateBeerStyleCategories < ActiveRecord::Migration
  def change
    create_table :beer_style_categories do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
