class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.float :possize
      t.integer :posquantity

      t.timestamps
    end
  end
end
