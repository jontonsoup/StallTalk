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

ActiveRecord::Schema.define(:version => 20121123212128) do

  create_table "bathroomobjects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "checkins", :force => true do |t|
    t.integer  "poopstation_id"
    t.string   "summary"
    t.integer  "stalltalkian_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "state"
    t.string   "city"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations_poopstations", :id => false, :force => true do |t|
    t.integer "location_id"
    t.integer "poopstation_id"
  end

  create_table "poopstations", :force => true do |t|
    t.string   "sticker_type"
    t.string   "gender"
    t.integer  "stalltalkian_id"
    t.boolean  "printed"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "poopstations_stalltalkians", :id => false, :force => true do |t|
    t.integer "stalltalkian_id"
    t.integer "poopstation_id"
  end

  create_table "posts", :force => true do |t|
    t.text     "text"
    t.integer  "poopstation_id"
    t.integer  "stalltalkian_id"
    t.integer  "location_id"
    t.integer  "likes",           :default => 0
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "stalltalkians", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.string   "role"
  end

  add_index "stalltalkians", ["authentication_token"], :name => "index_stalltalkians_on_authentication_token", :unique => true
  add_index "stalltalkians", ["confirmation_token"], :name => "index_stalltalkians_on_confirmation_token", :unique => true
  add_index "stalltalkians", ["email"], :name => "index_stalltalkians_on_email", :unique => true
  add_index "stalltalkians", ["reset_password_token"], :name => "index_stalltalkians_on_reset_password_token", :unique => true
  add_index "stalltalkians", ["unlock_token"], :name => "index_stalltalkians_on_unlock_token", :unique => true

  create_table "statuses", :force => true do |t|
    t.integer  "checkin_id"
    t.integer  "bathroomobjects_id"
    t.string   "status"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "stickercounts", :force => true do |t|
    t.integer  "count",      :default => 25
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
