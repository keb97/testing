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

ActiveRecord::Schema.define(version: 20131030152909) do

  create_table "addresses", force: true do |t|
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "admins", force: true do |t|
    t.string   "name",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "company_profiles", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_users", force: true do |t|
    t.string   "name",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_profile_id"
  end

  add_index "company_users", ["company_profile_id"], name: "index_company_users_on_company_profile_id"
  add_index "company_users", ["email"], name: "index_company_users_on_email", unique: true
  add_index "company_users", ["reset_password_token"], name: "index_company_users_on_reset_password_token", unique: true

  create_table "locatables", force: true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "address_id"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locatables", ["address_id"], name: "index_locatables_on_address_id"
  add_index "locatables", ["owner_id", "owner_type"], name: "index_locatables_on_owner_id_and_owner_type"

  create_table "transactions", force: true do |t|
    t.string   "pickup_address"
    t.string   "dropoff_address"
    t.date     "pickup_date"
    t.time     "pickup_time"
    t.date     "dropoff_date"
    t.time     "dropoff_time"
    t.integer  "vehicle_id"
    t.integer  "user_id"
    t.integer  "company_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["company_profile_id"], name: "index_transactions_on_company_profile_id"
  add_index "transactions", ["user_id"], name: "index_transactions_on_user_id"
  add_index "transactions", ["vehicle_id"], name: "index_transactions_on_vehicle_id"

  create_table "users", force: true do |t|
    t.string   "name",                   default: "", null: false
    t.string   "phone",                  default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicles", force: true do |t|
    t.string   "make"
    t.string   "kind"
    t.string   "year"
    t.string   "color"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_profile_id"
  end

  add_index "vehicles", ["company_profile_id"], name: "index_vehicles_on_company_profile_id"

end
