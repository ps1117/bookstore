class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.integer :isbn
      t.float :price
      t.datetime :published_date
      t.timestamps null: false
    end
  end
end
