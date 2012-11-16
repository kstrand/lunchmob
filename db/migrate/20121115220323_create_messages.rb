class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body, :null => false 
      t.datetime :next_send_time 
      t.datetime :last_send_time

      t.timestamps
    end
  end
end
