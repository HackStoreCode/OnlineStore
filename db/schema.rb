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

ActiveRecord::Schema.define(version: 20171025000508) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "new_users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_groups", force: :cascade do |t|
    t.datetime "order_date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_order_groups_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "order_date"
    t.integer "product_id"
    t.integer "ordergroup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ordergroup_id"], name: "index_orders_on_ordergroup_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "payments", force: :cascade do |t|
    t.datetime "payment_date"
    t.text "description"
    t.float "total_amount"
    t.integer "ordergroup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ordergroup_id"], name: "index_payments_on_ordergroup_id"
  end

  create_table "products", force: :cascade do |t|
    t.text "description"
    t.string "price"
    t.text "image"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
