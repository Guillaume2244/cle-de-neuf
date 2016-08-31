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

ActiveRecord::Schema.define(version: 20160830155202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "registration_plate"
    t.string   "initial_km"
    t.integer  "user_id"
    t.string   "initial_entry_into_service"
    t.date     "circulation_date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "token"
    t.string   "average_km"
    t.string   "futur_km"
    t.date     "futur_date"
    t.integer  "template_id"
    t.boolean  "publique"
    t.string   "name"
    t.index ["user_id"], name: "index_books_on_user_id", using: :btree
  end

  create_table "checkup_items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "numero"
  end

  create_table "checkups", force: :cascade do |t|
    t.date     "effective_date"
    t.integer  "checkup_item_id"
    t.integer  "garage_id"
    t.string   "km_ondate"
    t.date     "estimated_date"
    t.boolean  "done"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "book_id"
    t.string   "facture"
    t.string   "estimated_date_string"
    t.index ["book_id"], name: "index_checkups_on_book_id", using: :btree
    t.index ["checkup_item_id"], name: "index_checkups_on_checkup_item_id", using: :btree
    t.index ["garage_id"], name: "index_checkups_on_garage_id", using: :btree
  end

  create_table "garages", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "siret"
    t.string   "address"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "photo"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "token"
    t.string   "registration_plate"
    t.index ["user_id"], name: "index_garages_on_user_id", using: :btree
  end

  create_table "templates", force: :cascade do |t|
    t.string   "pneus_km"
    t.string   "pneus_date"
    t.string   "freinage"
    t.string   "revision_km"
    t.string   "revision_date"
    t.string   "balai"
    t.string   "echappement"
    t.string   "amortisseurs_km"
    t.string   "amortisseurs_date"
    t.string   "amortisseurs_changement"
    t.string   "bougies_km"
    t.string   "climatisation"
    t.string   "controle_technique_first"
    t.string   "controle_technique_others"
    t.string   "vidange_km"
    t.string   "vidange_date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "checkup_item_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "photo"
    t.boolean  "admin"
    t.boolean  "garagiste"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "books", "templates"
  add_foreign_key "books", "users"
  add_foreign_key "checkups", "checkup_items"
  add_foreign_key "garages", "users"
end
