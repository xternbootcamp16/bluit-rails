class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, limit: 255
      t.string :link_url, limit: 2000
      t.text :body
      t.timestamps
    end
  end
end
