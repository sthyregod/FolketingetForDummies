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

ActiveRecord::Schema[7.0].define(version: 2023_08_29_132526) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "politicians", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "party"
    t.string "sex"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.string "text"
    t.bigint "questioner_id"
    t.bigint "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questioner_id"], name: "index_questions_on_questioner_id"
    t.index ["recipient_id"], name: "index_questions_on_recipient_id"
  end

  add_foreign_key "questions", "politicians", column: "questioner_id"
  add_foreign_key "questions", "politicians", column: "recipient_id"
end
