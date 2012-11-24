# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121124223609) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "icon_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "message_recipients", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "message_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.text     "body",           :null => false
    t.datetime "next_send_time"
    t.datetime "last_send_time"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "mobs", :force => true do |t|
    t.string   "name"
    t.text     "message"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.boolean  "active",     :default => true
  end

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.string   "street_1"
    t.string   "street_2"
    t.string   "city",                      :default => "San Francisco"
    t.string   "state",        :limit => 2, :default => "CA"
    t.string   "zip"
    t.string   "phone_number"
    t.datetime "created_at",                                             :null => false
    t.datetime "updated_at",                                             :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "mob_id"
    t.string   "email"
  end

end
