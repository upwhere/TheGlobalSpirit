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

ActiveRecord::Schema.define(version: 20131030185453) do

  create_table "behaviours", force: true do |t|
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bills", force: true do |t|
    t.string   "identifier", null: false
    t.text     "abstract",   null: false
    t.string   "reference",  null: false
    t.integer  "body_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bills_covers", id: false, force: true do |t|
    t.integer "bill_id",  null: false
    t.integer "cover_id", null: false
  end

  create_table "body", force: true do |t|
    t.integer  "region_id", null: false
    t.datetime "formed",    null: false
    t.datetime "disbanded"
  end

  create_table "citizenspirit", force: true do |t|
    t.integer "yea",     null: false
    t.integer "nay",     null: false
    t.integer "bill_id", null: false
  end

  create_table "covers", force: true do |t|
    t.string   "reference",  null: false
    t.integer  "preference", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "covers_personas", id: false, force: true do |t|
    t.integer "cover_id",   null: false
    t.integer "persona_id", null: false
  end

  create_table "foreignspirit", force: true do |t|
    t.integer "yea",     null: false
    t.integer "nay",     null: false
    t.integer "bill_id", null: false
  end

  create_table "ipaddresses", force: true do |t|
    t.integer  "ipaddress",    null: false
    t.integer  "behaviour_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", force: true do |t|
    t.string   "nick",       null: false
    t.text     "about",      null: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "progress", force: true do |t|
    t.integer "bill_id", null: false
    t.integer "status",  null: false
  end

  create_table "regions", force: true do |t|
    t.string   "shortcode",  null: false
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions_voters", id: false, force: true do |t|
    t.integer "region_id", null: false
    t.integer "voter_id",  null: false
  end

  create_table "result", force: true do |t|
    t.integer "progress_id", null: false
    t.integer "yea",         null: false
    t.integer "neutral",     null: false
    t.integer "nay",         null: false
    t.integer "body_id",     null: false
  end

  create_table "stances", force: true do |t|
    t.integer  "opinion",    null: false
    t.integer  "persona_id", null: false
    t.integer  "bill_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",    null: false
    t.string   "contact",     null: false
    t.boolean  "banned",      null: false
    t.float    "credibility", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voters", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
