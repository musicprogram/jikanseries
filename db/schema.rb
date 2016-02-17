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

ActiveRecord::Schema.define(version: 20160217190314) do

  create_table "comments", force: :cascade do |t|
    t.string   "user"
    t.text     "body"
    t.integer  "likes"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["movie_id"], name: "index_comments_on_movie_id"

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.string   "video"
    t.string   "tag"
    t.text     "description"
    t.string   "year"
    t.string   "director"
    t.string   "duration"
    t.string   "country"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
