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

ActiveRecord::Schema.define(version: 20150823003950) do

  create_table "artists", force: true do |t|
    t.string   "name"
    t.integer  "location_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "creations", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "creator_id"
    t.text     "description"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dictionaries", force: true do |t|
    t.string   "word"
    t.integer  "six_id"
    t.integer  "six_cat_id"
    t.string   "component"
    t.text     "meaning"
    t.string   "term"
    t.string   "dicflash"
    t.string   "flash"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_olds", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.integer  "dic_id"
    t.string   "game_type"
    t.string   "name"
    t.string   "about"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", force: true do |t|
    t.string   "content"
    t.integer  "o_class"
    t.integer  "o_item"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.integer  "user_id"
    t.text     "content"
    t.integer  "like_count"
    t.integer  "dislike_count"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_option_memberships", force: true do |t|
    t.integer  "question_id"
    t.integer  "option_id"
    t.string   "code"
    t.boolean  "is_correct"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.text     "text"
    t.integer  "dic_id"
    t.string   "q_type"
    t.string   "ans"
    t.integer  "q_class"
    t.integer  "q_item"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "replies", force: true do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.string   "content"
    t.integer  "like_count"
    t.integer  "dislike_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "disabled",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sixbook_categorys", force: true do |t|
    t.string   "category_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sixbooks", force: true do |t|
    t.string   "word"
    t.integer  "dic_id"
    t.integer  "six_cat_id"
    t.string   "meaning"
    t.string   "image"
    t.string   "avatar"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", force: true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.integer  "age"
    t.boolean  "sex"
    t.date     "birth"
    t.text     "description"
    t.string   "location"
    t.boolean  "is_super_user"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
