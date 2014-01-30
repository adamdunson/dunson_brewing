class RemoveRecipeFromBeerStyles < ActiveRecord::Migration
  def change
    remove_column :beer_styles, :recipe
  end
end
