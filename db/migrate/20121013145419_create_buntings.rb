class CreateBuntings < ActiveRecord::Migration
  def change
    create_table :buntings do |t|
      t.float :buntingsize
      t.integer :buntingquantity

      t.timestamps
    end
  end
end
