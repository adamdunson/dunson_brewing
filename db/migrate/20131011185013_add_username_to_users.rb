class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, null: false, default: '', after: :email
    add_index :users, :username, :unique => true
  end
end
