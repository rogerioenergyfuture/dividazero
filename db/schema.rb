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

ActiveRecord::Schema.define(version: 2019_07_29_162308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "kind"
    t.integer "status"
    t.integer "predefaulting"
    t.integer "posdefaulting"
    t.string "prenotice"
    t.string "postnotice"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "holds", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "mobile"
    t.string "email"
    t.integer "status"
    t.integer "predefaulting"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_holds_on_company_id"
  end

  create_table "loads", force: :cascade do |t|
    t.date "dateload"
    t.integer "quantparcel"
    t.integer "daypay"
    t.bigint "hold_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hold_id"], name: "index_loads_on_hold_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "kind"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "companies", "users"
  add_foreign_key "holds", "companies"
  add_foreign_key "loads", "holds"
end
