class CreateOrderpayments < ActiveRecord::Migration
  def change
    create_table :orderpayments do |t|
      t.integer :order_id
      t.integer :payment_id

      t.timestamps
    end
  end
end
