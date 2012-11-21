class CreateMobs < ActiveRecord::Migration
  def change
    create_table :mobs do |t|
      t.string :name
      t.text :message

      t.timestamps
    end
  end
end
