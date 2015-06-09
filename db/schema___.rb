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
