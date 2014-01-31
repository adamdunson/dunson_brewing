class ChangeBrewDateTypeToDate < ActiveRecord::Migration
  def change
    change_column :beers, :brew_date, :date
  end
end
