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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150713202658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travel_plan_entries", force: :cascade do |t|
    t.integer  "travel_plan_id"
    t.integer  "category_id"
    t.string   "notes"
    t.string   "expense_file"
    t.integer  "estimated_amount", default: 0
    t.boolean  "expensed?",        default: false
    t.integer  "actual_expense",   default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travel_plans", force: :cascade do |t|
    t.boolean  "international?",      default: false
    t.string   "destination_city"
    t.string   "destination_country"
    t.string   "departure_city"
    t.string   "departure_country"
    t.integer  "user_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "user_email"
    t.string   "password_digest"
    t.string   "f_name"
    t.string   "l_name"
    t.string   "user_profile_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
