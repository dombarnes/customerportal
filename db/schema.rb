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

ActiveRecord::Schema.define(version: 20131023103833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "homes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutes", force: true do |t|
    t.string   "name"
    t.string   "subdomain"
    t.text     "address"
    t.string   "contact"
    t.string   "contact_tel"
    t.string   "admin_contact"
    t.string   "admin_contact_tel"
    t.string   "subscription_type"
    t.date     "subscription_start_date"
    t.string   "subscription_end_date"
    t.integer  "reseller_id"
    t.string   "reseller_contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.text     "notes"
    t.integer  "institute_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resellers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_salt"
    t.string   "pasword_hash"
    t.boolean  "reseller"
    t.integer  "reseller_id"
    t.boolean  "admin"
    t.boolean  "staff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
