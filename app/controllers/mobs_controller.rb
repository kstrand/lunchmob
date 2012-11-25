require 'Mobify.rb'

class MobsController < ApplicationController

  def index
    @mobs = Mob.active
  end

  def create
    Mob.deactivate_all
    mob_sizes = Mobify.todays_mob_sizes(User.count)

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
    @mob = Mob.find(params[:mob_id])
    p "#{params[:mob_id]}"
    p "Hey there user #{params[:user_id]}"
  end


end
