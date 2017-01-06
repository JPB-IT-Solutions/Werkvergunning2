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

ActiveRecord::Schema.define(version: 20170106090902) do

  create_table "enquiries", force: :cascade do |t|
    t.string   "reference",   limit: 255
    t.string   "location",    limit: 255
    t.text     "description", limit: 65535
    t.integer  "amount",      limit: 4
    t.datetime "date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "enquirymeasures", force: :cascade do |t|
    t.string   "done",           limit: 255
    t.string   "responsible",    limit: 255
    t.string   "needed",         limit: 255
    t.integer  "enquiry_id",     limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "measurement_id", limit: 4
  end

  add_index "enquirymeasures", ["enquiry_id"], name: "index_enquirymeasures_on_enquiry_id", using: :btree
  add_index "enquirymeasures", ["measurement_id"], name: "index_enquirymeasures_on_measurement_id", using: :btree

  create_table "measurements", force: :cascade do |t|
    t.string   "measurement",       limit: 255
    t.string   "measurementtype",   limit: 255
    t.date     "validfrom"
    t.date     "validtill"
    t.integer  "enquirymeasure_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "measurements", ["enquirymeasure_id"], name: "index_measurements_on_enquirymeasure_id", using: :btree

  create_table "tools", force: :cascade do |t|
    t.string   "handtool",   limit: 255
    t.string   "equipment",  limit: 255
    t.string   "other",      limit: 255
    t.integer  "enquiry_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "tools", ["enquiry_id"], name: "index_tools_on_enquiry_id", using: :btree

  add_foreign_key "enquirymeasures", "enquiries"
  add_foreign_key "measurements", "enquirymeasures"
  add_foreign_key "tools", "enquiries"
end
