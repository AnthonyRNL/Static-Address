class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :userID
      t.string :content
      t.integer :upvote

      t.timestamps null: false
    end
  end
end
