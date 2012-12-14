class CreateOrderstats < ActiveRecord::Migration
  def change
    create_table :orderstats do |t|
      t.string :info
      t.integer :order_id
      t.integer :ass_id

      t.timestamps
    end
  end
end
