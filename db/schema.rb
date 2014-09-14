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

ActiveRecord::Schema.define(version: 20140914044214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: true do |t|
    t.string   "login",         default: ""
    t.string   "name",          default: ""
    t.string   "mail",          default: ""
    t.integer  "department_id"
    t.integer  "type",          default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agenda_reserv_dates", force: true do |t|
    t.integer  "reservation_id"
    t.date     "start_date_hour"
    t.date     "end_date_hour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agenda_reserv_msgs", force: true do |t|
    t.integer  "reservation_id"
    t.string   "message",        default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agenda_reserv_resources", force: true do |t|
    t.integer  "reservation_id"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agenda_reservations", force: true do |t|
    t.integer  "folio"
    t.string   "requester",              default: ""
    t.string   "email",                  default: ""
    t.string   "phone",                  default: ""
    t.integer  "foreign_headquarter_id"
    t.integer  "event_type_id"
    t.integer  "status_id",              default: 0
    t.string   "comments",               default: ""
    t.integer  "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_departments", force: true do |t|
    t.string   "abbr",           default: ""
    t.string   "name",           default: ""
    t.string   "img_header",     default: ""
    t.integer  "institution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_event_types", force: true do |t|
    t.string   "name",       default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_headquarters", force: true do |t|
    t.string   "name",           default: ""
    t.integer  "institution_id"
    t.string   "responsible",    default: ""
    t.string   "email",          default: ""
    t.string   "phone",          default: ""
    t.string   "comments",       default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_institutions", force: true do |t|
    t.string   "abbr",       default: ""
    t.string   "name",       default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_resource_types", force: true do |t|
    t.string   "name",        default: ""
    t.string   "description", default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_resources", force: true do |t|
    t.string   "abbr",             default: ""
    t.string   "name",             default: ""
    t.integer  "resource_type_id"
    t.string   "description",      default: ""
    t.string   "location",         default: ""
    t.boolean  "active",           default: true
    t.integer  "admin_user_id"
    t.boolean  "unique",           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_statuses", force: true do |t|
    t.string   "name",       default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogs_user_resources", force: true do |t|
    t.integer  "admin_user_id"
    t.integer  "resource_id"
    t.boolean  "administrator", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
