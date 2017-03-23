class Actors::UsersController < ApplicationController
    layout false
    # validates_presence_of :first_name
    #you can deal with the current user with variable called (current_user) that what Devise gem offers you with
    def index
    #   current_user.days.each do |day|
    #     puts day.Name
    #     puts day.id
    #   end
        @friends = getFriends
        render('index')
    end

    def listUsers
        @friends = getFriends
        @nonFriends = getNonFriends
        render('listUsers')
    end

    def addNewFriend
        @friend = User.find(params[:id])
        current_user.addFriend(@friend)
        self.listUsers
    end

    def removeFriend
        @friend = User.find(params[:id])
        current_user.removeFriend(@friend)
        self.listUsers
    end

    def about
        render('aboutPage')
    end
    private
        def getFriends
            return current_user.all_friends
        end
        def getNonFriends
            return current_user.get_non_friends
        end
end
