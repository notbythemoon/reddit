class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :account
      t.references :community
      t.string :title
      t.text :body
      t.integer :upvotes, deafault: 0
      t.integer :downvotes, deafault: 0
      t.integer :total_comments, deafault: 0
      t.timestamps
    end
  end
end
