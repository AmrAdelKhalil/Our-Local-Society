class Day < ActiveRecord::Base
  has_many :slots, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :slots, :allow_destroy => true
end
