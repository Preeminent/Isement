class AddCategoryColumnToListings < ActiveRecord::Migration
  def change
    add_column :listings, :category, :string
  end
end
