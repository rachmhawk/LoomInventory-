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

ActiveRecord::Schema.define(version: 20170330151657) do

  create_table "fabrics", force: :cascade do |t|
    t.string   "name"
    t.string   "sku"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_inventories", force: :cascade do |t|
    t.integer  "item_id"
    t.datetime "purchased_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "notes"
    t.index ["item_id"], name: "index_item_inventories_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "fabric_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fabric_id"], name: "index_items_on_fabric_id"
    t.index ["product_id"], name: "index_items_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "sku"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
