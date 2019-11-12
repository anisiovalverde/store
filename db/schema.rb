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

ActiveRecord::Schema.define(version: 2019_11_12_144818) do

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "state"
    t.string "city"
    t.string "telephone"
    t.string "email"
    t.string "website"
    t.string "contact"
    t.string "contact_phone"
    t.string "contact_email"
    t.string "owner_name"
    t.string "owner_phone"
    t.string "owner_email"
    t.string "accounting_email"
    t.boolean "free"
    t.boolean "delivery"
    t.boolean "visible"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
