class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.integer :day_id
      t.string :Desc, :default => "", :limit => 100
      t.string :Start, :default => "", :limit => 20
      t.string :End, :default => "", :limit =>20
      t.timestamps null: false
    end
  end
end
