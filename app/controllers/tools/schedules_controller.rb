class Tools::SchedulesController < ApplicationController

  def new
    days_per_week = ["Saturday","Sunday", "Monday", "Tuesday", "Wednesday", "Thursday"]
    slots = ["First Slot", "Second Slot", "Third Slot", "Fourth Slot", "Fifth Slot"]
    @user = User.new
    @user.days = []
    #don't forget to put if condition for the next part
    #to make sure that it won't happen again in the real world
    #i mean refreshing the web page or go back to it again
    days_per_week.each do |i|
      @day = Day.new(:Name => i)
      @user.days.push(@day)
    end

    @user.days.each do |day|
      slots.each do |i|
        @slot = Slot.new(:Name => i)
        day.slots << @slot
      end
    end

  end

  def create
    #you can see here to iterate through the params i made key and value_day
    #because if you print the params you will see structure like this
    #"0" => {Name: "x", slot...} so you need key and value
    params[:user][:days_attributes].each do |key_day,value_day|

        @day = Day.new(:user_id=>current_user.id, :Name=>value_day["Name"], :Summary=>value_day["Summary"])

        @day.save

        value_day["slots_attributes"].each do |key_slot,value_slot|
          @slot = Slot.new(:day_id=>@day.id, :Desc=>value_slot["Desc"], :Start=> "", :End=> "")

          @slot.save
        end

    end

    redirect_to actors_users_path
  end

  def edit

  end

  def update
    params[:user][:days_attributes].each do|key_day, value_day|
      value_day["slots_attributes"].each do|key_slot, value_slot|
        Slot.find(value_slot[:id]).update(:Desc => value_slot[:Desc])
      end
    end
    redirect_to actors_users_path
  end
end
