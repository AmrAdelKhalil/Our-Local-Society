class Friend < ActiveRecord::Base
  belongs_to :user
  # accepts_nested_attributes_for :users, :allow_destroy => true
end
