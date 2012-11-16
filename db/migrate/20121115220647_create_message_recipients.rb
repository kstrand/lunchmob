class CreateMessageRecipients < ActiveRecord::Migration
  def change
    create_table :message_recipients do |t|
      t.integer :user_id, :null => false
      t.integer :message_id, :null => false

      t.timestamps
    end
  end
end
