# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_21_100538) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.text "note"
    t.bigint "user_id", null: false
    t.bigint "booker_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "time_slot_id"
    t.index ["booker_id"], name: "index_bookings_on_booker_id"
    t.index ["time_slot_id"], name: "index_bookings_on_time_slot_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "time_slots", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "day"
    t.time "start_time"
    t.time "end_time"
    t.boolean "reserved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_time_slots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "avatar"
    t.string "experience_level"
    t.string "days_availability"
    t.string "time_availability"
    t.text "about_me"
    t.string "programming_languages"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "time_slots"
  add_foreign_key "bookings", "users"
  add_foreign_key "bookings", "users", column: "booker_id"
  add_foreign_key "time_slots", "users"
end
