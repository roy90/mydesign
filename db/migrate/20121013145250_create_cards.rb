class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.float :cardsize
      t.integer :cardquantity

      t.timestamps
    end
  end
end
