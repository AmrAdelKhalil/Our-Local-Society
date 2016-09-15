class Tools::SchedulesController < ApplicationController

  def new
    days_per_week = ["Saturday","Sunday", "Monday", "Tuesday", "Wednesday", "Thursday"]
    slots = ["First Slot", "Second Slot", "Third Slot", "Fourth Slot", "Fifth Slot"]
    @user = User.new
    @user.days = []
    #don't forget to put if condition for the next part
    #to make sure that it won't happen again in the real world
    days_per_week.each do |i|
      @day = Day.new(:Name => i)
      puts i
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


    redirect_to :action => 'new'
  end

end
