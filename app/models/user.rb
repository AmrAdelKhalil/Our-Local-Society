class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :days, dependent: :destroy

  #This creates an days_attributes= method
  #on User that allows you to create
  #, update and (optionally) destroy days.
  accepts_nested_attributes_for :days, :allow_destroy => true
end
