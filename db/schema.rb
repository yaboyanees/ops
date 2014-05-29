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

ActiveRecord::Schema.define(version: 20140322204002) do

  create_table "jobs", force: true do |t|
    t.string   "name",        limit: 15
    t.text     "description"
    t.integer  "training_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orientations", force: true do |t|
    t.datetime "orientation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timecards", force: true do |t|
    t.datetime "checkin_time"
    t.datetime "checkout_time"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainings", force: true do |t|
    t.string   "name",               limit: 50
    t.date     "certification_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name",             limit: 15
    t.string   "last_name",              limit: 25
    t.string   "phone_number",           limit: 15
    t.boolean  "admin"
    t.boolean  "m"
    t.boolean  "t"
    t.boolean  "w"
    t.boolean  "th"
    t.boolean  "f"
    t.boolean  "s"
    t.boolean  "su"
    t.boolean  "mor"
    t.boolean  "aft"
    t.boolean  "eve"
    t.integer  "job_id"
    t.integer  "training_id"
    t.integer  "orientation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
