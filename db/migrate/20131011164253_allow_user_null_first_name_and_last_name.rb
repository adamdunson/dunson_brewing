class AllowUserNullFirstNameAndLastName < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.change :first_name, :string, :null => true, :default => ""
      t.change :last_name, :string, :null => true, :default => ""
    end
  end
end
