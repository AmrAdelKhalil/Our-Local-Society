class Actors::UsersController < ApplicationController
    # validates_presence_of :first_name
    #you can deal with the current user with variable called (current_user)
    def index
      current_user.days.each do |day|
        puts day.Name
      end
    end

end
