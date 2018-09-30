class AddImageToBooks < ActiveRecord::Migration
  def change
    add_column :books, :image, :string unless column_exists? :books, :image
  end
end
