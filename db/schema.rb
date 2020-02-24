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

ActiveRecord::Schema.define(version: 2020_02_24_164627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collaborations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "shot_id", null: false
    t.date "deadline"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shot_id"], name: "index_collaborations_on_shot_id"
    t.index ["user_id"], name: "index_collaborations_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "collaboration_id", null: false
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collaboration_id"], name: "index_reviews_on_collaboration_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "shotlists", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_shotlists_on_user_id"
  end

  create_table "shots", force: :cascade do |t|
    t.string "angle"
    t.bigint "shotlist_id", null: false
    t.string "shot_size"
    t.string "movement"
    t.text "description"
    t.string "equipment"
    t.text "actors"
    t.text "props"
    t.text "notes"
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shotlist_id"], name: "index_shots_on_shotlist_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "collaborations", "shots"
  add_foreign_key "collaborations", "users"
  add_foreign_key "reviews", "collaborations"
  add_foreign_key "reviews", "users"
  add_foreign_key "shotlists", "users"
  add_foreign_key "shots", "shotlists"
end
