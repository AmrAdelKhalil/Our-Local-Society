class Tools::SchedulesController < ApplicationController

  def new
    array = ["Saturday","Sunday", "Monday", "Tuesday", "Wednesday", "Thursday"]
    @user = User.new
    @user.days = []
    #don't forget to put if condition for the next part
    #to make sure that it won't happen again in the real world
    array.each do |i|
      @day = Day.new(:Name => i)
      puts i
      @user.days.push(@day)
    end

    @user.days.each do |day|
      5.times {day.slots.build}
    end

  end

  def create


    redirect_to :action => 'new'
  end

end
