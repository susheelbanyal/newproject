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

ActiveRecord::Schema.define(version: 20150608130715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_payments", force: :cascade do |t|
    t.decimal  "admin_share"
    t.decimal  "sponsor_share"
    t.decimal  "user_payee"
    t.decimal  "tax"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "availabilities", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "day"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "block_users", force: :cascade do |t|
    t.integer  "blocked_user"
    t.integer  "blocked_by"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cities", force: :cascade do |t|
    t.integer "country_id"
    t.integer "state_id"
    t.string  "name"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "internet"
    t.string "continent"
    t.string "currency"
    t.string "currency_code"
  end

  create_table "meetings", force: :cascade do |t|
    t.integer  "user_payer"
    t.integer  "user_payee"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "country_id"
    t.integer  "zip_code"
    t.datetime "meeting_date"
    t.time     "start_time"
    t.time     "end_time"
    t.decimal  "price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "negotiable_rates", force: :cascade do |t|
    t.integer  "user_payer"
    t.integer  "user_payee"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsor_networks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sponsor_user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "states", force: :cascade do |t|
    t.integer "country_id"
    t.string  "name"
    t.string  "code"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                              default: "", null: false
    t.string   "encrypted_password",                 default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "first_name",             limit: 50
    t.string   "last_name",              limit: 50
    t.string   "unique_code",            limit: 50
    t.datetime "date_of_birth"
    t.integer  "sex",                    limit: 2
    t.string   "phone",                  limit: 15
    t.string   "image",                  limit: 200
    t.string   "address",                limit: 300
    t.decimal  "price"
    t.string   "profession",             limit: 200
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "country_id"
    t.integer  "zip_code",               limit: 8
    t.decimal  "lat"
    t.decimal  "long"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
	
	
	create_table "cities", force: true do |t|
		t.integer "country_id"
		t.integer "state_id"
		t.string  "name"
	end

	add_index "cities", ["name"], name: "index_cities_on_name", using: :btree
 
	create_table "countries", force: true do |t|
		t.string "name"
		t.string "internet"
		t.string "continent"
		t.string "currency"
		t.string "currency_code"
	end

	add_index "countries", ["continent"], name: "index_countries_on_continent", using: :btree
	add_index "countries", ["name"], name: "index_countries_on_name", unique: true, using: :btree
      
	create_table "states", force: true do |t|
		t.integer "country_id"
		t.string  "name"
		t.string  "code"
	end

	add_index "states", ["name"], name: "index_states_on_name", using: :btree
end
