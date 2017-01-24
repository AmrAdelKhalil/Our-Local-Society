class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :days, dependent: :destroy

  #this for User many-to-many with itself
  has_and_belongs_to_many :users, :join_table => "friendship", :foreign_key => "UID", :association_foreign_key => "FID"

  #returns all friends of a user
  def all_friends
    return self.users
  end
  #has_and_belongs_to_many :friends, dependent: :destroy
  #This creates an days_attributes= method
  #on User that allows you to create
  #, update and (optionally) destroy days.
  accepts_nested_attributes_for :days, :allow_destroy => true
end
