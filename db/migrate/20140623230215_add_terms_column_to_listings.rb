class AddTermsColumnToListings < ActiveRecord::Migration
  def change
    add_column :listings, :terms, :text
  end
end
