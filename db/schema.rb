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

ActiveRecord::Schema[7.1].define(version: 2023_10_28_092517) do
  create_table "speech_parts", force: :cascade do |t|
    t.string "de", null: false
    t.string "en", null: false
    t.string "es", null: false
    t.string "ru", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["de"], name: "index_speech_parts_on_de", unique: true
    t.index ["en"], name: "index_speech_parts_on_en", unique: true
    t.index ["es"], name: "index_speech_parts_on_es", unique: true
    t.index ["ru"], name: "index_speech_parts_on_ru", unique: true
  end

end
