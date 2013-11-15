class CreateBeerStyles < ActiveRecord::Migration
  def change
    create_table :beer_styles do |t|
      t.string :name, null: false
      t.text :recipe
      t.text :description

      t.timestamps
    end
  end
end
