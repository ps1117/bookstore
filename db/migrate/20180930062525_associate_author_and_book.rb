class AssociateAuthorAndBook < ActiveRecord::Migration
  def change
  	create_table :authors_books do |t|
  		t.belongs_to :author, index: true
  		t.belongs_to :book, index: true
  	end
  end
end
