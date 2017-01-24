class CreateFriendshipTable < ActiveRecord::Migration
  def change
    create_table :friendship, :id=>false do |t|
      t.integer "UID", :null=>false
      t.integer "FID", :null=>false
    end
  end
end
#this table for user and his friend relationship, it is the intermediate table between user table and itself
