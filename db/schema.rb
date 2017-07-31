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

ActiveRecord::Schema.define(version: 20170731125055) do

  create_table "clips", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.integer  "vegetable_id", limit: 4
    t.text     "text",         limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "review_id",    limit: 4
  end

  add_index "comments", ["review_id"], name: "index_comments_on_review_id", using: :btree

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id",            limit: 4
    t.integer  "vegetable_id",       limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "vegetable_image_id", limit: 4
  end

  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree
  add_index "favorites", ["vegetable_id"], name: "index_favorites_on_vegetable_id", using: :btree
  add_index "favorites", ["vegetable_image_id"], name: "index_favorites_on_vegetable_image_id", using: :btree

  create_table "purchases", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",      limit: 4
    t.integer  "vegetable_id", limit: 4
  end

  add_index "purchases", ["user_id"], name: "index_purchases_on_user_id", using: :btree
  add_index "purchases", ["vegetable_id"], name: "index_purchases_on_vegetable_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "general_rate",       limit: 4
    t.integer  "taste_rate",         limit: 4
    t.integer  "visual_rate",        limit: 4
    t.integer  "communication_rate", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vegetable_id",       limit: 4
    t.integer  "comment_id",         limit: 4
    t.integer  "user_id",            limit: 4
  end

  add_index "reviews", ["comment_id"], name: "index_reviews_on_comment_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
    t.string   "phone_number",           limit: 11
    t.string   "nickname",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vegetable_images", force: :cascade do |t|
    t.integer  "vegetable_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",       limit: 4,     default: 1
    t.text     "content",      limit: 65535
  end

  add_index "vegetable_images", ["status"], name: "index_vegetable_images_on_status", using: :btree

  create_table "vegetables", force: :cascade do |t|
    t.text     "name",        limit: 65535
    t.integer  "price",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",     limit: 4
    t.text     "description", limit: 65535
  end

  add_foreign_key "comments", "reviews"
  add_foreign_key "favorites", "vegetable_images"
  add_foreign_key "purchases", "users"
  add_foreign_key "purchases", "vegetables"
  add_foreign_key "reviews", "comments"
  add_foreign_key "reviews", "users"
end
