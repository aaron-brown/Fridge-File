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

ActiveRecord::Schema.define(:version => 20111209205132) do

  create_table "fridges", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fridges", ["user_id"], :name => "index_fridges_on_user_id"

  create_table "items", :force => true do |t|
    t.string   "name"
    t.integer  "quantity"
    t.date     "expiration_date"
    t.integer  "fridge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["fridge_id"], :name => "index_items_on_fridge_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
