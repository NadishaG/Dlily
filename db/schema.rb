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

ActiveRecord::Schema.define(version: 20150323170745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_email"
    t.integer  "contact_number"
    t.string   "address"
    t.integer  "brand_code"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.string   "item_code"
    t.integer  "brand_id"
    t.datetime "sold_on"
    t.integer  "sold_to"
    t.datetime "returned_on"
    t.text     "return_reason"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "items", ["brand_id"], name: "index_items_on_brand_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "brand_id"
    t.datetime "ordered_on"
    t.datetime "delivered_on"
    t.integer  "order_size"
    t.integer  "order_price"
    t.text     "item_description"
    t.string   "color_code"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "orders", ["brand_id"], name: "index_orders_on_brand_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.string   "order_id"
    t.string   "cover_photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "contact_number"
    t.string   "address"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_foreign_key "items", "brands"
  add_foreign_key "orders", "brands"
end
