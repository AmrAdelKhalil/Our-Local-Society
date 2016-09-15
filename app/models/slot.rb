class Slot < ActiveRecord::Base
  has_many :notes, dependent: :destroy
  belongs_to :day
  accepts_nested_attributes_for :notes, :allow_destroy => true
end
