class AddActiveToMobs < ActiveRecord::Migration
  def change
    add_column :mobs, :active, :boolean, :default => true
  end
end
