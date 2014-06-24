class AddDurationColumnToListings < ActiveRecord::Migration
  def change
    add_column :listings, :duration, :string
  end
end
