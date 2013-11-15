class AddBeerStyleCategoryToBeerStyles < ActiveRecord::Migration
  def change
    add_column :beer_styles, :beer_style_category_id, :integer, after: :description
    add_index :beer_styles, :beer_style_category_id
  end
end
