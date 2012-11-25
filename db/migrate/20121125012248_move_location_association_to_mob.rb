class MoveLocationAssociationToMob < ActiveRecord::Migration
   def up
    remove_column :meet_up_locations, :mob_id 
    add_column 		:mobs, :meet_up_location_id, :integer 
  end

  def down
    add_column :meet_up_locations, :mob_id, :integer
  end
end
