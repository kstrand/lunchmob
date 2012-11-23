require 'Mobify.rb'

class MobsController < ApplicationController


  def index
    @mobs = Mob.all

  end

  def new
  end

  def create
    # mob_names = %w[sublime-eating funny-food happy-belly-time sexy-sizzle whatchamacallit joyful-face-stuffing]

    mob_sizes = Mobify.todays_mob_sizes(User.count)
    
    users = User.all.shuffle
    
    mob_sizes.each do |size|
      mob = Mob.create(name: "mob of #{size}", message: 'Think about code not lunch!')
      mob.users << users.pop(size)
    end
    
    redirect_to mobs_path

  end


  def update

  end


  def edit
  end


  def show
  end


  def destroy
  end

end
