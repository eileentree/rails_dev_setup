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

ActiveRecord::Schema.define(version: 20150412200820) do

  create_table "cycling_profs", force: true do |t|
    t.integer  "CycID"
    t.string   "Type"
    t.string   "PacePref"
    t.integer  "YearStarted"
    t.integer  "PrefGroup"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "distances", force: true do |t|
    t.integer  "RideID"
    t.float    "Distance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emergency_contacts", force: true do |t|
    t.integer  "EID"
    t.string   "Name"
    t.integer  "Phone"
    t.string   "Relationship"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.integer  "RideID"
    t.string   "RideLocation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paces", force: true do |t|
    t.integer  "RideID"
    t.string   "Pace"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pel_profiles", force: true do |t|
    t.integer  "RiderID"
    t.integer  "YearsRidden"
    t.boolean  "LivingProof"
    t.boolean  "HighRoller"
    t.boolean  "Scholar"
    t.boolean  "PaceSetter"
    t.boolean  "RoadLead"
    t.boolean  "GroundLead"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pelotons", force: true do |t|
    t.string   "PelName"
    t.integer  "PelCaptainID"
    t.string   "PelWeb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "riders", force: true do |t|
    t.string   "Name"
    t.integer  "Age"
    t.string   "Addr1"
    t.string   "Addr2"
    t.string   "City"
    t.string   "State"
    t.integer  "Zip"
    t.string   "Region"
    t.string   "Email"
    t.integer  "Phone"
    t.string   "Password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "api_key"
  end

  create_table "rides", force: true do |t|
    t.string   "RideName"
    t.integer  "RideSponsorId"
    t.datetime "RideDate"
    t.datetime "RideLaunchTime"
    t.string   "RideStartLocation"
    t.string   "RideLength"
    t.string   "RidePace"
    t.string   "RideTerrain"
    t.integer  "RideLeader"
    t.string   "Description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
