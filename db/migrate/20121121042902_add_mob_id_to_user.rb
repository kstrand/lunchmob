class AddMobIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :mob_id, :interger
  end
end
