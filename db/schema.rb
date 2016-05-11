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

ActiveRecord::Schema.define(version: 20160511073534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dislikes", force: :cascade do |t|
    t.string   "outfit_id"
    t.string   "integer"
    t.string   "dislike_count"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "likes", force: :cascade do |t|
    t.string   "outfit_id"
    t.string   "integer"
    t.string   "like_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occasions", force: :cascade do |t|
    t.string   "occasion_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "outfits", force: :cascade do |t|
    t.string   "user_id"
    t.string   "integer"
    t.string   "occasion_id"
    t.string   "like_id"
    t.string   "dislike_id"
    t.string   "photo"
    t.string   "string"
    t.string   "start_datetime"
    t.string   "timestamp"
    t.string   "end_datetime"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "string"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
