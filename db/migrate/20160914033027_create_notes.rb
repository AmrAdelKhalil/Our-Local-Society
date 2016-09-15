class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :slot_id
      t.string :Desc, :limit => 50
      t.timestamps null: false
    end
  end
end
