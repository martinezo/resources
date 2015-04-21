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

ActiveRecord::Schema.define(version: 20150420185453) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string   "login",         limit: 255, default: ""
    t.string   "name",          limit: 255, default: ""
    t.string   "mail",          limit: 255, default: ""
    t.integer  "department_id"
    t.integer  "user_type_id",              default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agenda_reserv_dates", force: :cascade do |t|
    t.integer  "reservation_id"
    t.date     "start_date_hour"
    t.date     "end_date_hour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agenda_reserv_msgs", force: :cascade do |t|
    t.integer  "reservation_id"
    t.string   "message",        limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "agenda_reserv_resources", force: :cascade do |t|
    t.integer  "reservation_id"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agenda_reservations", force: :cascade do |t|
    t.integer  "folio"
    t.string   "requester",              limit: 255, default: ""
    t.string   "email",                  limit: 255, default: ""
    t.string   "phone",                  limit: 255, default: ""
    t.integer  "foreign_headquarter_id"
    t.integer  "event_type_id"
    t.integer  "status_id",                          default: 0
    t.string   "resource_requested",     limit: 255, default: ""
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "department_id"
    t.integer  "local_headquarter_id"
  end

  create_table "catalogs_departments", force: :cascade do |t|
    t.string   "abbr",           limit: 255, default: ""
    t.string   "name",           limit: 255, default: ""
    t.string   "img_header",     limit: 255, default: ""
    t.integer  "institution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_event_types", force: :cascade do |t|
    t.string   "name",       limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_headquarters", force: :cascade do |t|
    t.string   "name",           limit: 255, default: ""
    t.integer  "institution_id"
    t.string   "responsible",    limit: 255, default: ""
    t.string   "email",          limit: 255, default: ""
    t.string   "phone",          limit: 255, default: ""
    t.string   "comments",       limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_institutions", force: :cascade do |t|
    t.string   "abbr",       limit: 255, default: ""
    t.string   "name",       limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "local",                  default: false
  end

  create_table "catalogs_resource_types", force: :cascade do |t|
    t.string   "name",        limit: 255, default: ""
    t.string   "description", limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_resources", force: :cascade do |t|
    t.string   "abbr",             limit: 255, default: ""
    t.string   "name",             limit: 255, default: ""
    t.integer  "resource_type_id"
    t.string   "description",      limit: 255, default: ""
    t.string   "location",         limit: 255, default: ""
    t.boolean  "active",                       default: true
    t.integer  "admin_user_id"
    t.boolean  "unique",                       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_statuses", force: :cascade do |t|
    t.string   "name",       limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_user_resources", force: :cascade do |t|
    t.integer  "admin_user_id"
    t.integer  "resource_id"
    t.boolean  "administrator", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devise_users", force: :cascade do |t|
    t.string   "email",               limit: 255, default: "", null: false
    t.string   "encrypted_password",  limit: 255, default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "devise_users", ["email"], name: "index_devise_users_on_email", unique: true, using: :btree

end
