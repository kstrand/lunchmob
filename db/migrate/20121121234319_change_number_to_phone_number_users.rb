class ChangeNumberToPhoneNumberUsers < ActiveRecord::Migration
  def up
    rename_column :users, :number, :phone_number
  end

  def down
    rename_column :users, :phone_number, :number
  end
end
