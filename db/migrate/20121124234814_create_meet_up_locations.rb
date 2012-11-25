class CreateMeetUpLocations < ActiveRecord::Migration
  def change
    create_table :meet_up_locations do |t|
      t.string :name
      t.integer :mob_id
      t.text :description

      t.timestamps
    end
  end
end
