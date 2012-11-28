class MobsController < ApplicationController

  def index
    @mobs = Mob.active
  end

  def create
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
    redirect_to mobs_path
  end

  def show
    @mob = Mob.find(params[:mob_id])
    @restaurant = Mob.find(params[:mob_id]).restaurant
    @icon = @restaurant.category.icon_url.gsub( "/images/", "" )
   #TODO: record in the user object that the user is active because they clicked params[:user_id]
  end

  def destroy
  end

  def update
  end

  def edit
  end

  def new
  end


end
