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

ActiveRecord::Schema.define(:version => 20120415040112) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "subheading"
    t.text     "disclaimer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rsvps", :force => true do |t|
    t.integer  "user_id"
    t.integer  "session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.integer  "event_id"
    t.datetime "date"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "address"
    t.string   "address2"
    t.string   "state"
    t.string   "zip"
    t.string   "email"
    t.string   "hphone"
    t.string   "cphone"
    t.text     "message"
    t.text     "special"
    t.integer  "partysize"
    t.integer  "childrencount"
    t.string   "childrenages"
    t.datetime "registrationdate"
    t.datetime "loggedin"
    t.datetime "loggedout"
    t.string   "usertype"
    t.string   "memberid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end