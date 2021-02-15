# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_15_154745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "news_id", null: false
    t.bigint "video_id", null: false
    t.string "moderation_rank", default: "Low"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "language_id"
    t.string "description"
    t.index ["language_id"], name: "index_comments_on_language_id"
    t.index ["news_id"], name: "index_comments_on_news_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
    t.index ["video_id"], name: "index_comments_on_video_id"
  end

  create_table "grades", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "news_id", null: false
    t.bigint "video_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rating"
    t.index ["news_id"], name: "index_grades_on_news_id"
    t.index ["user_id"], name: "index_grades_on_user_id"
    t.index ["video_id"], name: "index_grades_on_video_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "news", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title_pt"
    t.string "content_pt"
    t.string "content_es"
    t.string "title_es"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_news_on_user_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "news_id", null: false
    t.bigint "videos_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["news_id"], name: "index_taggings_on_news_id"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["videos_id"], name: "index_taggings_on_videos_id"
  end

  create_table "tags", force: :cascade do |t|
    t.bigint "language_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language_id"], name: "index_tags_on_language_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.boolean "active", default: true
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title_pt"
    t.string "description_pt"
    t.string "title_es"
    t.string "description_es"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_videos_on_user_id"
  end

  add_foreign_key "comments", "news"
  add_foreign_key "comments", "users"
  add_foreign_key "comments", "videos"
  add_foreign_key "grades", "news"
  add_foreign_key "grades", "users"
  add_foreign_key "grades", "videos"
  add_foreign_key "news", "users"
  add_foreign_key "taggings", "news"
  add_foreign_key "taggings", "tags"
  add_foreign_key "taggings", "videos", column: "videos_id"
  add_foreign_key "tags", "languages"
  add_foreign_key "videos", "users"
end
