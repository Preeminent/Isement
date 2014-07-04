class DropMapsTable < ActiveRecord::Migration
  def up
    drop_table :maps
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
