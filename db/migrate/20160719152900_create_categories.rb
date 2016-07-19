class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, limit: 20, null: false
      t.string :title, limit: 100
      t.string :description, limit: 500
      t.text :sidebar, limit: 5120
      t.text :submission_text, limit: 1024
      t.timestamps
    end
  end
end
