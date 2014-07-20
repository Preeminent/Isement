class ChangeListingName < ActiveRecord::Migration

  def self.up
  	rename_column :listings, :name, :title
  end

  def self.down
  	#rename back if you need to do something else or do nothing
  end

end
