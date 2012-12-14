class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :paymentype

      t.timestamps
    end
  end
end
