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

ActiveRecord::Schema.define(version: 20150522104221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses_schools", id: false, force: :cascade do |t|
    t.integer "school_id"
    t.integer "course_id"
  end

  add_index "courses_schools", ["course_id"], name: "index_courses_schools_on_course_id", using: :btree
  add_index "courses_schools", ["school_id"], name: "index_courses_schools_on_school_id", using: :btree

  create_table "courses_subjects", force: :cascade do |t|
    t.integer "course_id"
    t.integer "subject_id"
  end

  add_index "courses_subjects", ["course_id"], name: "index_courses_subjects_on_course_id", using: :btree
  add_index "courses_subjects", ["subject_id"], name: "index_courses_subjects_on_subject_id", using: :btree

  create_table "exams", force: :cascade do |t|
    t.text     "description"
    t.date     "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "exams_subjects", force: :cascade do |t|
    t.integer "exam_id"
    t.integer "subject_id"
  end

  add_index "exams_subjects", ["exam_id"], name: "index_exams_subjects_on_exam_id", using: :btree
  add_index "exams_subjects", ["subject_id"], name: "index_exams_subjects_on_subject_id", using: :btree

  create_table "exams_themes", force: :cascade do |t|
    t.integer "exam_id"
    t.integer "theme_id"
  end

  add_index "exams_themes", ["exam_id"], name: "index_exams_themes_on_exam_id", using: :btree
  add_index "exams_themes", ["theme_id"], name: "index_exams_themes_on_theme_id", using: :btree

  create_table "exams_users", force: :cascade do |t|
    t.integer "exam_id"
    t.integer "user_id"
  end

  add_index "exams_users", ["exam_id"], name: "index_exams_users_on_exam_id", using: :btree
  add_index "exams_users", ["user_id"], name: "index_exams_users_on_user_id", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools_users", force: :cascade do |t|
    t.integer "school_id"
    t.integer "user_id"
  end

  add_index "schools_users", ["school_id"], name: "index_schools_users_on_school_id", using: :btree
  add_index "schools_users", ["user_id"], name: "index_schools_users_on_user_id", using: :btree

  create_table "study_sessions", force: :cascade do |t|
    t.date     "date"
    t.integer  "exam_id"
    t.integer  "theme_id"
    t.integer  "user_id"
    t.integer  "minutes",    default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.integer  "school_year"
    t.string   "description"
    t.string   "teacher"
    t.integer  "season"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "themes", force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "minutes"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
