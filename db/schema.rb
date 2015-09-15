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

ActiveRecord::Schema.define(version: 20150915222659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brokers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_stocks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "stock_id"
    t.integer  "client_id"
    t.integer  "amount"
  end

  add_index "client_stocks", ["client_id"], name: "index_client_stocks_on_client_id", using: :btree
  add_index "client_stocks", ["stock_id"], name: "index_client_stocks_on_stock_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.decimal  "cash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "client_stocks", "clients"
  add_foreign_key "client_stocks", "stocks"
end
