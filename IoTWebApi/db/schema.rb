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

ActiveRecord::Schema.define(version: 20161219213903) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "school_id"
    t.integer  "degree_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["degree_id"], name: "index_courses_on_degree_id"
    t.index ["school_id"], name: "index_courses_on_school_id"
  end

  create_table "courses_disciplines", id: false, force: :cascade do |t|
    t.integer "course_id",     null: false
    t.integer "discipline_id", null: false
  end

  create_table "degrees", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "disciplines", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "grade"
    t.integer  "discipline_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["discipline_id"], name: "index_projects_on_discipline_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "description"
    t.boolean  "projector"
    t.integer  "seats"
    t.integer  "school_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["school_id"], name: "index_rooms_on_school_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.string   "distric"
    t.string   "city"
    t.string   "county"
    t.string   "postCode"
    t.string   "addressDetails"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "api_key"
    t.string   "password"
    t.string   "resetToken"
    t.string   "surname"
    t.datetime "resetDate"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
