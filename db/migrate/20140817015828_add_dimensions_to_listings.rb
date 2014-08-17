class AddDimensionsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :dimensions, :string
  end
end
