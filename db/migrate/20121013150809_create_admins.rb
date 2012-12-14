class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :adname
      t.string :ademail
      t.string :adpass

      t.timestamps
    end
  end
end
