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

ActiveRecord::Schema.define(version: 20141105161546) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_tours", force: true do |t|
    t.integer "category_id"
    t.integer "tour_id"
  end

  add_index "categories_tours", ["category_id"], name: "index_categories_tours_on_category_id", using: :btree
  add_index "categories_tours", ["tour_id"], name: "index_categories_tours_on_tour_id", using: :btree

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tours_count"
  end

  create_table "tours", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "state",       default: 0
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tours", ["city_id"], name: "index_tours_on_city_id", using: :btree

end