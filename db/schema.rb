# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_11_08_214738) do
  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.integer "Enterprise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Enterprise_id"], name: "index_customers_on_Enterprise_id"
  end

  create_table "enterprises", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string "sheet_type"
    t.integer "quantity"
    t.string "width"
    t.string "length"
    t.string "depth"
    t.string "color"
    t.string "location"
    t.integer "enterprise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enterprise_id"], name: "index_inventories_on_enterprise_id"
  end

  create_table "machines", force: :cascade do |t|
    t.string "name"
    t.integer "status", default: 0
    t.integer "enterprise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "machine_type"
    t.index ["enterprise_id"], name: "index_machines_on_enterprise_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "date"
    t.integer "status", default: 0
    t.integer "customer_id", null: false
    t.integer "Enterprise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Enterprise_id"], name: "index_orders_on_Enterprise_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "production_orders", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.integer "status", default: 0
    t.integer "order_id", null: false
    t.integer "machine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_production_orders_on_machine_id"
    t.index ["order_id"], name: "index_production_orders_on_order_id"
  end

  add_foreign_key "customers", "Enterprises"
  add_foreign_key "inventories", "enterprises"
  add_foreign_key "machines", "enterprises"
  add_foreign_key "orders", "Enterprises"
  add_foreign_key "orders", "customers"
  add_foreign_key "production_orders", "machines"
  add_foreign_key "production_orders", "orders"
end
