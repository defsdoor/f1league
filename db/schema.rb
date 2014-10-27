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

ActiveRecord::Schema.define(version: 20141024181057) do

  create_table "circuits", force: true do |t|
    t.string  "name",           limit: 64,                          default: "",  null: false
    t.integer "circuit_type",   limit: 1,                           default: 0,   null: false
    t.integer "direction",      limit: 1,                           default: 0,   null: false
    t.string  "location",       limit: 128,                         default: "",  null: false
    t.decimal "current_length",             precision: 3, scale: 6, default: 0.0, null: false
  end

  create_table "countries", force: true do |t|
    t.string "name",        limit: 64, default: "",  null: false
    t.string "nationality", limit: 64, default: "0", null: false
  end

  create_table "drivers", force: true do |t|
    t.string   "forename",           limit: 32, default: "",           null: false
    t.string   "surname",            limit: 32, default: "",           null: false
    t.string   "display_name",       limit: 64, default: "",           null: false
    t.date     "born_on",                       default: '1970-01-01', null: false
    t.integer  "country_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "drivers", ["country_id"], name: "index_drivers_on_country_id"

  create_table "seasons", force: true do |t|
    t.string "title", limit: 128, default: "", null: false
  end

end
