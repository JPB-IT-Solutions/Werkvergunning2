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

ActiveRecord::Schema.define(version: 20170111095851) do

  create_table "agreeds", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "date"
    t.integer  "enquiry_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "agreeds", ["enquiry_id"], name: "index_agreeds_on_enquiry_id", using: :btree

  create_table "applicants", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "email",         limit: 255
    t.integer  "enquiry_id",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "contractor_id", limit: 4
  end

  add_index "applicants", ["contractor_id"], name: "index_applicants_on_contractor_id", using: :btree
  add_index "applicants", ["enquiry_id"], name: "index_applicants_on_enquiry_id", using: :btree

  create_table "contractors", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "email",        limit: 255
    t.integer  "applicant_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "contractors", ["applicant_id"], name: "index_contractors_on_applicant_id", using: :btree

  create_table "controls", force: :cascade do |t|
    t.boolean  "enquirycheck"
    t.boolean  "workspacecheck"
    t.integer  "enquiry_id",     limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "controls", ["enquiry_id"], name: "index_controls_on_enquiry_id", using: :btree

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

  create_table "gasmeters", force: :cascade do |t|
    t.datetime "date"
    t.string   "tester",       limit: 255
    t.string   "signature",    limit: 255
    t.string   "oxigen",       limit: 255
    t.boolean  "o_needed"
    t.boolean  "o_continu"
    t.string   "explosives",   limit: 255
    t.boolean  "e_needed"
    t.boolean  "e_continu"
    t.string   "mat1",         limit: 255
    t.boolean  "mat1_needed"
    t.boolean  "mat1_continu"
    t.string   "mat2",         limit: 255
    t.boolean  "mat2_needed"
    t.boolean  "mat2_continu"
    t.string   "mat3",         limit: 255
    t.boolean  "mat3_needed"
    t.boolean  "mat3_continu"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "enquiry_id",   limit: 4
  end

  add_index "gasmeters", ["enquiry_id"], name: "index_gasmeters_on_enquiry_id", using: :btree

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

  create_table "representatives", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "telephone",    limit: 4
    t.string   "email",        limit: 255
    t.integer  "signature_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "representatives", ["signature_id"], name: "index_representatives_on_signature_id", using: :btree

  create_table "signatures", force: :cascade do |t|
    t.datetime "date"
    t.string   "signature",         limit: 255
    t.integer  "enquiry_id",        limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "representative_id", limit: 4
  end

  add_index "signatures", ["enquiry_id"], name: "index_signatures_on_enquiry_id", using: :btree
  add_index "signatures", ["representative_id"], name: "index_signatures_on_representative_id", using: :btree

  create_table "tools", force: :cascade do |t|
    t.string   "handtool",     limit: 255
    t.string   "equipment",    limit: 255
    t.string   "other",        limit: 255
    t.integer  "enquiry_id",   limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.boolean  "motorvehicle",             default: false
    t.boolean  "compressor",               default: false
    t.boolean  "ramp",                     default: false
    t.boolean  "scaffold",                 default: false
    t.boolean  "crane",                    default: false
    t.boolean  "ladder",                   default: false
    t.boolean  "generator",                default: false
    t.boolean  "tankladder",               default: false
  end

  add_index "tools", ["enquiry_id"], name: "index_tools_on_enquiry_id", using: :btree

  add_foreign_key "agreeds", "enquiries"
  add_foreign_key "applicants", "contractors"
  add_foreign_key "applicants", "enquiries"
  add_foreign_key "contractors", "applicants"
  add_foreign_key "controls", "enquiries"
  add_foreign_key "enquirymeasures", "enquiries"
  add_foreign_key "gasmeters", "enquiries"
  add_foreign_key "measurements", "enquirymeasures"
  add_foreign_key "representatives", "signatures"
  add_foreign_key "signatures", "enquiries"
  add_foreign_key "signatures", "representatives"
  add_foreign_key "tools", "enquiries"
end
