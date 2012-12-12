require 'weekend_check.rb'
namespace :app do

desc "This task is called by the Heroku scheduler add-on"


task :lunchmob_messages => :environment do
  if week_day?
  #if weekend? 
      Mob.deactivate_all
      empty_mobs = Mob.todays_mob_sizes(User.count)
      users = User.all.shuffle
      restaurants = Restaurant.all.shuffle
      locations = MeetUpLocation.all.shuffle
      empty_mobs.each_with_index do |size, i |
        mob = Mob.create(name: "mob of #{size}", message: 'Think about code not lunch!')
        mob.meet_up_location = locations[i] # FIXME : check if there as many locations as mobs.
        mob.restaurant = restaurants[i]
        # note: next line also saves the mob object
        mob.users << users.pop(size) # this line sets the users for a mob
        mob.save!
      end
      message = Message.new(:body => "LunchMob rules") 
      message.send_daily_mob
    end
  end
end