class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.string :description
      t.integer :rate

      t.timestamps
    end
  end
end
