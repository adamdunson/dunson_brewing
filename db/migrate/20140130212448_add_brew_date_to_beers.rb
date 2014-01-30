class AddBrewDateToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :brew_date, :datetime
  end
end
