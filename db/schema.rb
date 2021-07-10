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

ActiveRecord::Schema.define(version: 2021_07_10_185917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_products", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_products_on_order_id"
    t.index ["product_id"], name: "index_order_products_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "store_id"
  end

  create_table "product_stores", force: :cascade do |t|
    t.integer "product_id"
    t.integer "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id", "store_id"], name: "index_product_stores_on_product_id_and_store_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "sku"
    t.string "type_p"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "email", default: "francisco.abalan@pjchile.com"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "order_products", "orders"
  add_foreign_key "order_products", "products"
end
