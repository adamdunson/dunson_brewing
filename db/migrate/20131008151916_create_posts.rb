class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.belongs_to :author, class_name: 'User', index: true

      t.timestamps
    end
  end
end
