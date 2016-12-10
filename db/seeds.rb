# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:first_name=>'Amr', :second_name=>'Adel', :email=>'test@test', :password=>'12')

Day.create(:user_id=>1, :Name=> 'Saturday', :Summary=>'Nothing')
Day.create(:user_id=>1, :Name=> 'Sunday', :Summary=>'Nothing')
Day.create(:user_id=>1, :Name=> 'Monday', :Summary=>'Nothing')
Day.create(:user_id=>1, :Name=> 'Tuesday', :Summary=>'Nothing')
Day.create(:user_id=>1, :Name=> 'Wednesday', :Summary=>'Nothing')
Day.create(:user_id=>1, :Name=> 'Thursday', :Summary=>'Nothing')

Slot.create(:day_id=>1, :Desc=> 'Wonderful day', :Start=>"08:00 A.M", :End=>"09:15 A.M")
Slot.create(:day_id=>1, :Desc=> 'Amazing day', :Start=>"09:30 A.M", :End=>"10:45 A.M")
Slot.create(:day_id=>1, :Desc=> 'Not bad day', :Start=>"11:15 A.M", :End=>"12:30 P.M")
Slot.create(:day_id=>1, :Desc=> 'fakss day', :Start=>"12:45 P.M", :End=>"02:00 P.M")
Slot.create(:day_id=>1, :Desc=> 'OK day', :Start=>"02:45 P.M", :End=>"04:00 P.M")


Slot.create(:day_id=>2, :Desc=> 'Wonderful day', :Start=>"08:00 A.M", :End=>"09:15 A.M")
Slot.create(:day_id=>2, :Desc=> 'Amazing day', :Start=>"09:30 A.M", :End=>"10:45 A.M")
Slot.create(:day_id=>2, :Desc=> 'Not bad day', :Start=>"11:15 A.M", :End=>"12:30 P.M")
Slot.create(:day_id=>2, :Desc=> 'fakss day', :Start=>"12:45 P.M", :End=>"02:00 P.M")
Slot.create(:day_id=>2, :Desc=> 'OK day', :Start=>"02:45 P.M", :End=>"04:00 P.M")

Slot.create(:day_id=>3, :Desc=> 'Wonderful day', :Start=>"08:00 A.M", :End=>"09:15 A.M")
Slot.create(:day_id=>3, :Desc=> 'Amazing day', :Start=>"09:30 A.M", :End=>"10:45 A.M")
Slot.create(:day_id=>3, :Desc=> 'Not bad day', :Start=>"11:15 A.M", :End=>"12:30 P.M")
Slot.create(:day_id=>3, :Desc=> 'fakss day', :Start=>"12:45 P.M", :End=>"02:00 P.M")
Slot.create(:day_id=>3, :Desc=> 'OK day', :Start=>"02:45 P.M", :End=>"04:00 P.M")

Slot.create(:day_id=>4, :Desc=> 'Wonderful day', :Start=>"08:00 A.M", :End=>"09:15 A.M")
Slot.create(:day_id=>4, :Desc=> 'Amazing day', :Start=>"09:30 A.M", :End=>"10:45 A.M")
Slot.create(:day_id=>4, :Desc=> 'Not bad day', :Start=>"11:15 A.M", :End=>"12:30 P.M")
Slot.create(:day_id=>4, :Desc=> 'fakss day', :Start=>"12:45 P.M", :End=>"02:00 P.M")
Slot.create(:day_id=>4, :Desc=> 'OK day', :Start=>"02:45 P.M", :End=>"04:00 P.M")

Slot.create(:day_id=>5, :Desc=> 'Wonderful day', :Start=>"08:00 A.M", :End=>"09:15 A.M")
Slot.create(:day_id=>5, :Desc=> 'Amazing day', :Start=>"09:30 A.M", :End=>"10:45 A.M")
Slot.create(:day_id=>5, :Desc=> 'Not bad day', :Start=>"11:15 A.M", :End=>"12:30 P.M")
Slot.create(:day_id=>5, :Desc=> 'fakss day', :Start=>"12:45 P.M", :End=>"02:00 P.M")
Slot.create(:day_id=>5, :Desc=> 'OK day', :Start=>"02:45 P.M", :End=>"04:00 P.M")

Slot.create(:day_id=>6, :Desc=> 'Wonderful day', :Start=>"08:00 A.M", :End=>"09:15 A.M")
Slot.create(:day_id=>6, :Desc=> 'Amazing day', :Start=>"09:30 A.M", :End=>"10:45 A.M")
Slot.create(:day_id=>6, :Desc=> 'Not bad day', :Start=>"11:15 A.M", :End=>"12:30 P.M")
Slot.create(:day_id=>6, :Desc=> 'fakss day', :Start=>"12:45 P.M", :End=>"02:00 P.M")
Slot.create(:day_id=>6, :Desc=> 'OK day', :Start=>"02:45 P.M", :End=>"04:00 P.M")
