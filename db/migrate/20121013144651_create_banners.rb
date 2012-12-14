class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.float :bansize
      t.integer :banquantity

      t.timestamps
    end
  end
end
