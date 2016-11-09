class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :user_id
      t.string :Name, :null => false
      t.string :Summary, :default => "", :limit => 50
      t.timestamps null: false
    end
  end
end
