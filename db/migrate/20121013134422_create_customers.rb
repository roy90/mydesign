class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :cusname
      t.string :cusemail
      t.string :cusadd
      t.string :cuspostcode
      t.string :cuscity
      t.string :cusphone
      t.string :cusdate

      t.timestamps
    end
  end
end
