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

ActiveRecord::Schema.define(version: 20160312153333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapters", force: :cascade do |t|
    t.string   "name"
    t.integer  "season_id"
    t.string   "link"
    t.string   "video"
    t.string   "tag"
    t.text     "description"
    t.string   "duration"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  add_index "chapters", ["season_id"], name: "index_chapters_on_season_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "user"
    t.text     "body"
    t.integer  "likes"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["movie_id"], name: "index_comments_on_movie_id", using: :btree

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
    t.text     "actors"
    t.integer  "category_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string   "name"
    t.integer  "series_temp_id"
    t.string   "link"
    t.string   "video"
    t.string   "tag"
    t.text     "description"
    t.string   "year"
    t.string   "duration"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  add_index "seasons", ["series_temp_id"], name: "index_seasons_on_series_temp_id", using: :btree

  create_table "series_temps", force: :cascade do |t|
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
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
    t.string   "baner_file_name"
    t.string   "baner_content_type"
    t.integer  "baner_file_size"
    t.datetime "baner_updated_at"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "chapters", "seasons"
  add_foreign_key "comments", "movies"
  add_foreign_key "seasons", "series_temps"
end
