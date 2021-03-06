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

ActiveRecord::Schema.define(version: 20170801173509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyers", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name",                null: false
    t.string   "last_name",                 null: false
    t.string   "company_name",              null: false
    t.string   "linkedin"
    t.string   "email",          limit: 35, null: false
    t.string   "account_type"
    t.string   "account_status"
    t.string   "address"
    t.integer  "mobile_phone"
    t.integer  "personal_phone"
    t.integer  "business_phone"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "leads", force: :cascade do |t|
    t.integer  "buyers_id"
    t.integer  "suppliers_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: :cascade do |t|
  end

  create_table "suppliers", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "company_name",                         null: false
    t.string   "email",                     limit: 35, null: false
    t.string   "account_type"
    t.string   "account_status"
    t.string   "address"
    t.integer  "business_phone"
    t.string   "preferred_shipping_method"
    t.string   "core_business"
    t.integer  "verified_score"
    t.string   "tags"
    t.boolean  "claimed?"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "user_type"
    t.boolean  "buyer?"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "identities", "users"
end
