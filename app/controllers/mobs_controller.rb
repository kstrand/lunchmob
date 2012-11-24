require 'Mobify.rb'

class MobsController < ApplicationController


  def index
    @mobs = Mob.active

  end

  def new

  end

  def create
    # mob_names = %w[sublime-eating funny-food happy-belly-time sexy-sizzle whatchamacallit joyful-face-stuffing]
    Mob.deactivate_all
    mob_sizes = Mobify.todays_mob_sizes(User.count)
    #p "*" * 100
    #p mob_sizes
    users = User.all.shuffle
    mob_sizes.each do |size|
      mob = Mob.create(name: "mob of #{size}", message: 'Think about code not lunch!')
      mob.users << users.pop(size) # this line sets the users for a mob 
    end
    message = Message.new(:body => "LunchMob rules") 
    message.send_daily_mob
    
    redirect_to mobs_path

  end




  def update

  end


  def edit
  end


  def show
    @mobs = Mob.all
    @mob = Mob.find(params[:id])
  end


  def destroy
  end

end
