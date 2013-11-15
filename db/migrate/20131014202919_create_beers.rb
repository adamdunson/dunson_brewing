class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name, null: false
      t.references :beer_style, index: true
      t.text :description

      t.timestamps
    end
  end
end
