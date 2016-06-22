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

ActiveRecord::Schema.define(version: 20160622212308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.string   "release_year"
    t.string   "plot"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "movies", ["user_id"], name: "index_movies_on_user_id", using: :btree

  create_table "parts", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "parts", ["movie_id"], name: "index_parts_on_movie_id", using: :btree
  add_index "parts", ["user_id"], name: "index_parts_on_user_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "r_date"
    t.string   "r_time"
  end

  create_table "tweets", force: :cascade do |t|
    t.string   "status"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tweets", ["user_id"], name: "index_tweets_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "part_id"
    t.integer  "movie_id"
  end

  add_index "users", ["movie_id"], name: "index_users_on_movie_id", using: :btree
  add_index "users", ["part_id"], name: "index_users_on_part_id", using: :btree

  add_foreign_key "movies", "users"
  add_foreign_key "tweets", "users"
  add_foreign_key "users", "movies"
  add_foreign_key "users", "parts"
end
