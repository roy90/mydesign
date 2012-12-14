class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :ad_id
      t.integer :cus_id
      t.integer :ban_id
      t.integer :bun_id
      t.integer :bus_id
      t.integer :pos_id

      t.timestamps
    end
  end
end
