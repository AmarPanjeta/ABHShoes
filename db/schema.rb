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

ActiveRecord::Schema.define(version: 20160325105449) do

  create_table "brands", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carts", ["user_id"], name: "index_carts_on_user_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "hex"
  end

  create_table "line_items", force: true do |t|
    t.integer  "cart_id"
    t.integer  "shoe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   default: 1
    t.integer  "size"
    t.integer  "color_id"
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id"
  add_index "line_items", ["color_id"], name: "index_line_items_on_color_id"
  add_index "line_items", ["shoe_id"], name: "index_line_items_on_shoe_id"

  create_table "product_variants", force: true do |t|
    t.integer  "color_id"
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shoe_id"
  end

  add_index "product_variants", ["shoe_id"], name: "index_product_variants_on_shoe_id"

  create_table "shoes", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "imgurl"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brand_id"
    t.integer  "category_id"
  end

  add_index "shoes", ["brand_id"], name: "index_shoes_on_brand_id"
  add_index "shoes", ["category_id"], name: "index_shoes_on_category_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "name"
    t.string   "surname"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
  end

end
