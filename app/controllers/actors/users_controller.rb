class Actors::UsersController < ApplicationController
    layout false
    # validates_presence_of :first_name
    #you can deal with the current user with variable called (current_user) that what Devise gem offers you with
    def index
    #   current_user.days.each do |day|
    #     puts day.Name
    #     puts day.id
    #   end
        @frineds = current_user.friends
        render('index')
    end

end
