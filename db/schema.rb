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

ActiveRecord::Schema.define(version: 2019_09_04_163133) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "area_id"
    t.bigint "institution_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_alerts_on_area_id"
    t.index ["institution_id"], name: "index_alerts_on_institution_id"
    t.index ["user_id"], name: "index_alerts_on_user_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "scholarship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "favorited_type"
    t.bigint "favorited_id"
    t.index ["favorited_type", "favorited_id"], name: "index_favorites_on_favorited_type_and_favorited_id"
    t.index ["scholarship_id"], name: "index_favorites_on_scholarship_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "country"
    t.string "ranking"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["user_id"], name: "index_institutions_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.bigint "alert_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_id"], name: "index_notifications_on_alert_id"
  end

  create_table "scholarships", force: :cascade do |t|
    t.string "name"
    t.bigint "area_id"
    t.text "description"
    t.date "application_start_date"
    t.date "application_end_date"
    t.bigint "institution_id"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_scholarships_on_area_id"
    t.index ["institution_id"], name: "index_scholarships_on_institution_id"
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
    t.string "photo"
    t.string "role"
    t.string "degree"
    t.string "nationality"
    t.string "area"
    t.date "date_of_birth"
    t.string "gender"
    t.string "country"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alerts", "areas"
  add_foreign_key "alerts", "institutions"
  add_foreign_key "alerts", "users"
  add_foreign_key "favorites", "scholarships"
  add_foreign_key "favorites", "users"
  add_foreign_key "institutions", "users"
  add_foreign_key "notifications", "alerts"
  add_foreign_key "scholarships", "areas"
  add_foreign_key "scholarships", "institutions"
end
