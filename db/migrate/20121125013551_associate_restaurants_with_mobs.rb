class AssociateRestaurantsWithMobs < ActiveRecord::Migration
  def up
  	add_column 		:mobs, :restaurant_id, :integer 
  end

  def down
  	remove_column 		:mobs, :restaurant_id
  end
end
