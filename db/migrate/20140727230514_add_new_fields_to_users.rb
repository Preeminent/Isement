class AddNewFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :alt_email, :string
    add_column :users, :zip, :integer
    add_column :users, :phone, :integer
  end
end
