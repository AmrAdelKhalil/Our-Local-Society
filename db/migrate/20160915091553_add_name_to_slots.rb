class AddNameToSlots < ActiveRecord::Migration
  def change
    add_column :slots, :Name, :string, :default => ""
  end
end
