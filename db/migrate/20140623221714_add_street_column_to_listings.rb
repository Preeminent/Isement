class AddStreetColumnToListings < ActiveRecord::Migration
  def change
    add_column :listings, :street, :string
  end
end
