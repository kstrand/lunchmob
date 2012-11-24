class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :category_id
      t.string :street_1
      t.string :street_2
      t.string :city, :default => "San Francisco"
      t.string :state, :default => "CA", :limit => 2 
      t.string :zip
      t.string :phone_number

      t.timestamps
    end
  end
end
