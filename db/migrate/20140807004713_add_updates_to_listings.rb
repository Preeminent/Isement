class AddUpdatesToListings < ActiveRecord::Migration
  def change
    add_column :listings, :updates, :text
  end
end
