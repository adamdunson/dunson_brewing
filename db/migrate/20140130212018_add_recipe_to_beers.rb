class AddRecipeToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :recipe, :text
  end
end
