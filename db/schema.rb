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

ActiveRecord::Schema.define(version: 2020_01_27_230325) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "gender_id", null: false
    t.decimal "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gender_id"], name: "index_categories_on_gender_id"
  end

  create_table "fighters", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "gender_id", null: false
    t.date "date_of_birth"
    t.integer "height"
    t.decimal "weight"
    t.integer "category_id", null: false
    t.integer "martial_art_id", null: false
    t.date "activity_begin"
    t.date "last_payment"
    t.text "notes"
    t.string "image_url"
    t.text "image_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_fighters_on_category_id"
    t.index ["gender_id"], name: "index_fighters_on_gender_id"
    t.index ["martial_art_id"], name: "index_fighters_on_martial_art_id"
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "martial_arts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "categories", "genders"
  add_foreign_key "fighters", "categories"
  add_foreign_key "fighters", "genders"
  add_foreign_key "fighters", "martial_arts"
end
