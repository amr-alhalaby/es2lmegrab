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

ActiveRecord::Schema.define(version: 20160409123407) do

  create_table "database_structures", force: :cascade do |t|
  end

  create_table "question_tags", force: :cascade do |t|
    t.integer "TAG_id",      limit: 4,                 null: false
    t.integer "QUESTION_id", limit: 4,                 null: false
    t.boolean "disabled",    limit: 1, default: false, null: false
  end

  add_index "question_tags", ["QUESTION_id"], name: "fk_Question_TAGS_QUESTIONS1_idx", using: :btree
  add_index "question_tags", ["TAG_id"], name: "fk_Question_TAGS_TAGS1_idx", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string  "header",      limit: 255,                   null: false
    t.text    "body",        limit: 65535,                 null: false
    t.string  "picture_url", limit: 255
    t.integer "up",          limit: 4
    t.integer "down",        limit: 4
    t.boolean "disabled",    limit: 1,     default: false, null: false
    t.integer "owner_id",    limit: 4,                     null: false
  end

  add_index "questions", ["owner_id"], name: "fk_QUESTIONS_USERS1_idx", using: :btree

  create_table "replies", force: :cascade do |t|
    t.text    "body",            limit: 65535,                 null: false
    t.string  "picture_url",     limit: 255
    t.integer "up",              limit: 4
    t.integer "down",            limit: 4
    t.boolean "disabled",        limit: 1,     default: false, null: false
    t.integer "parent_reply_id", limit: 4
    t.integer "owner_id",        limit: 4,                     null: false
  end

  add_index "replies", ["owner_id"], name: "fk_REPLIES_USERS1_idx", using: :btree
  add_index "replies", ["parent_reply_id"], name: "fk_REPLIES_REPLIES_idx", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "title",    limit: 255,                 null: false
    t.boolean "disabled", limit: 1,   default: false, null: false
  end

  create_table "user_question_rates", force: :cascade do |t|
    t.integer "user_id",     limit: 4, null: false
    t.integer "question_id", limit: 4, null: false
    t.boolean "rate",        limit: 1, null: false
  end

  add_index "user_question_rates", ["question_id"], name: "user_question_rates_question_id_idx", using: :btree
  add_index "user_question_rates", ["user_id"], name: "user_question_rates_user_fk", using: :btree

  create_table "user_reply_rates", force: :cascade do |t|
    t.integer "user_id",  limit: 4, null: false
    t.integer "reply_id", limit: 4, null: false
    t.boolean "rate",     limit: 1, null: false
  end

  add_index "user_reply_rates", ["reply_id"], name: "user_reply_rates_reply_id_idx", using: :btree
  add_index "user_reply_rates", ["user_id"], name: "user_reply_rates_user_fk", using: :btree

  create_table "users", force: :cascade do |t|
    t.string  "email",       limit: 255,                 null: false
    t.string  "name",        limit: 255,                 null: false
    t.string  "password",    limit: 255,                 null: false
    t.string  "picture_url", limit: 255
    t.boolean "disabled",    limit: 1,   default: false, null: false
  end

  add_foreign_key "question_tags", "questions", column: "QUESTION_id", name: "fk_Question_TAGS_QUESTIONS1"
  add_foreign_key "question_tags", "tags", column: "TAG_id", name: "fk_Question_TAGS_TAGS1"
  add_foreign_key "questions", "users", column: "owner_id", name: "fk_QUESTIONS_USERS1"
  add_foreign_key "replies", "replies", column: "parent_reply_id", name: "fk_REPLIES_REPLIES"
  add_foreign_key "replies", "users", column: "owner_id", name: "fk_REPLIES_USERS1"
  add_foreign_key "user_question_rates", "questions", name: "user_question_rates_question_id"
  add_foreign_key "user_question_rates", "users", name: "user_question_rates_user_fk"
  add_foreign_key "user_reply_rates", "replies", name: "user_reply_rates_reply_id"
  add_foreign_key "user_reply_rates", "users", name: "user_reply_rates_user_fk"
end
