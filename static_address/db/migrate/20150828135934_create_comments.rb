class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :postID
      t.integer :userID
      t.string :content

      t.timestamps null: false
    end
  end
end
