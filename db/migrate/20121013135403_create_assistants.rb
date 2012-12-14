class CreateAssistants < ActiveRecord::Migration
  def change
    create_table :assistants do |t|
      t.string :assname
      t.string :assemail
      t.string :asspass

      t.timestamps
    end
  end
end
