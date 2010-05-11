# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100504044731) do

  create_table "accounts", :primary_key => "a_id", :force => true do |t|
    t.string  "first_name",                      :null => false
    t.string  "last_name",                       :null => false
    t.string  "password",                        :null => false
    t.string  "email",                           :null => false
    t.date    "birthday",                        :null => false
    t.string  "gender"
    t.boolean "baptized"
    t.string  "phone_number"
    t.boolean "account_type", :default => false, :null => false
  end

  create_table "calendars", :primary_key => "c_id", :force => true do |t|
    t.string "link", :null => false
  end

  create_table "comments", :primary_key => "c_id", :force => true do |t|
    t.text     "body",       :null => false
    t.integer  "p_id",       :null => false
    t.string   "user",       :null => false
    t.datetime "created_at", :null => false
  end

  add_index "comments", ["p_id"], :name => "p_id"

  create_table "emails", :force => true do |t|
    t.string "email", :null => false
  end

  create_table "newsitems", :primary_key => "n_id", :force => true do |t|
    t.string   "title",                                         :null => false
    t.text     "body",                                          :null => false
    t.datetime "created_at", :default => '2010-05-04 00:26:37', :null => false
  end

  create_table "posts", :primary_key => "p_id", :force => true do |t|
    t.string   "title",      :null => false
    t.text     "body",       :null => false
    t.integer  "a_id",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "type",       :null => false
  end

  add_index "posts", ["a_id"], :name => "a_id"

end
