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

ActiveRecord::Schema.define(version: 20160923163015) do

  create_table "andrew_question_sets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "question_set_key"
    t.string   "question_set_score"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "andrew_users_id"
    t.index ["andrew_users_id"], name: "fk_andrew_users_id_to_andrew_question_sets", using: :btree
  end

  create_table "andrew_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "fname",                limit: 30
    t.string   "mname",                limit: 30
    t.string   "lname",                limit: 30
    t.datetime "birthdate"
    t.datetime "insert_time",                     default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "update_time",                                                          null: false
    t.string   "blockscore_id"
    t.string   "ssn",                  limit: 4
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_city"
    t.string   "address_state_abbr"
    t.string   "address_postal_code"
    t.string   "address_country_code"
  end

  create_table "app_bldr_fields", primary_key: "field_id", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "field_name",  limit: 25,                                      null: false
    t.integer  "update_by",                                                                unsigned: true
    t.datetime "update_time",                                                 null: false
    t.integer  "insert_by",                                                                unsigned: true
    t.datetime "insert_time",            default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["insert_by"], name: "fk_fields_insert_by", using: :btree
    t.index ["update_by"], name: "fk_fields_update_by", using: :btree
  end

  create_table "app_bldr_forms", primary_key: "form_id", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "template_id",                                                                   unsigned: true
    t.integer  "recipient_user_id",                                                             unsigned: true
    t.date     "date_filled_out"
    t.string   "is_complete",       limit: 1, default: "N"
    t.integer  "update_by",                                                                     unsigned: true
    t.datetime "update_time",                                                      null: false
    t.integer  "insert_by",                                                                     unsigned: true
    t.datetime "insert_time",                 default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["insert_by"], name: "fk_forms_insert_by", using: :btree
    t.index ["recipient_user_id"], name: "fk_forms_recipient_user_id", using: :btree
    t.index ["template_id"], name: "fk_forms_template_id", using: :btree
    t.index ["update_by"], name: "fk_forms_update_by", using: :btree
  end

  create_table "app_bldr_submissions", primary_key: "submission_id", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "form_id",                                                          null: false, unsigned: true
    t.integer  "field_id",                                                         null: false, unsigned: true
    t.string   "submission_text", limit: 100,                                      null: false
    t.integer  "update_by",                                                                     unsigned: true
    t.datetime "update_time",                                                      null: false
    t.integer  "insert_by",                                                                     unsigned: true
    t.datetime "insert_time",                 default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["field_id"], name: "fk_submissions_field_id", using: :btree
    t.index ["form_id"], name: "fk_submissions_form_id", using: :btree
    t.index ["insert_by"], name: "fk_submissions_insert_by", using: :btree
    t.index ["update_by"], name: "fk_submissions_update_by", using: :btree
  end

  create_table "app_bldr_template_fields", primary_key: "template_field_id", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "template_id",                                      null: false, unsigned: true
    t.integer  "field_id",                                         null: false, unsigned: true
    t.integer  "order_num",   default: 1,                          null: false, unsigned: true
    t.integer  "update_by",                                                     unsigned: true
    t.datetime "update_time",                                      null: false
    t.integer  "insert_by",                                                     unsigned: true
    t.datetime "insert_time", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["field_id"], name: "fk_template_fields_field_id", using: :btree
    t.index ["insert_by"], name: "fk_template_fields_insert_by", using: :btree
    t.index ["template_id"], name: "fk_template_fields_template_id", using: :btree
    t.index ["update_by"], name: "fk_template_fields_update_by", using: :btree
  end

  create_table "app_bldr_templates", primary_key: "template_id", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "template_name", limit: 25,                                      null: false
    t.integer  "created_by",                                                    null: false, unsigned: true
    t.integer  "update_by",                                                                  unsigned: true
    t.datetime "update_time",                                                   null: false
    t.integer  "insert_by",                                                                  unsigned: true
    t.datetime "insert_time",              default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["insert_by"], name: "fk_templates_insert_by", using: :btree
    t.index ["update_by"], name: "fk_templates_update_by", using: :btree
  end

  create_table "chris_addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "chris_user_id"
    t.string   "description"
    t.string   "name"
    t.string   "company"
    t.string   "email"
    t.string   "phone"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_country"
    t.string   "address_zip"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "chris_lob_reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "chris_address_id"
    t.string   "existing_address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "chris_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fake_merchant_scan_request_data", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "company_name"
    t.string   "company_url"
    t.string   "company_address_line_1"
    t.string   "company_address_line_2"
    t.string   "company_city"
    t.string   "company_state"
    t.string   "company_zip"
    t.string   "company_country"
    t.string   "company_phone_number"
    t.string   "company_dba"
    t.string   "principal_first_name"
    t.string   "principal_last_name"
    t.string   "principal_address_line_1"
    t.string   "principal_city"
    t.string   "principal_state"
    t.string   "principal_country"
    t.string   "principal_zip"
    t.string   "principal_phone_number"
    t.integer  "merchant_scan_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "role_id",                default: 0,                          null: false
    t.string   "role",        limit: 30
    t.datetime "insert_time",            default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "update_time",                                                 null: false
  end

  create_table "sky_person_reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "sky_user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "reportIdNumber"
  end

  create_table "sky_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "firstName"
    t.string   "middleName"
    t.string   "lastName"
    t.integer  "birthDay"
    t.integer  "birthMonth"
    t.integer  "birthYear"
    t.string   "addressStreet1"
    t.string   "addressStreet2"
    t.string   "addressCity"
    t.string   "addressState"
    t.string   "addressPostalCode"
    t.string   "addressCountryCode"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "students", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "id",         default: 0, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "user_roles", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "user_role_id", default: 0, null: false
    t.integer "user_id",                  null: false
    t.integer "role_id",                  null: false
  end

  create_table "userrails", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "id",         default: 0, null: false
    t.string   "generate"
    t.string   "model"
    t.string   "user"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", primary_key: "user_id", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci" do |t|
    t.string   "first_name",       limit: 40, default: "",                         null: false
    t.string   "last_name",        limit: 40, default: "",                         null: false
    t.string   "middle_name",      limit: 40, default: "",                         null: false
    t.string   "gender",           limit: 11, default: "UNSPECIFIED",              null: false
    t.string   "address_line_one", limit: 64, default: "",                         null: false
    t.string   "address_line_two", limit: 64, default: "",                         null: false
    t.string   "unit_number",      limit: 32, default: "",                         null: false
    t.string   "state",            limit: 64, default: "",                         null: false
    t.string   "city",             limit: 50, default: "",                         null: false
    t.string   "zip_code",         limit: 16, default: "",                         null: false
    t.date     "birthdate"
    t.string   "personal_phone",   limit: 16, default: "",                         null: false
    t.string   "ssn",                         default: "",                         null: false
    t.integer  "update_by",                                                                     unsigned: true
    t.datetime "update_time",                                                      null: false
    t.integer  "insert_by",                                                                     unsigned: true
    t.datetime "insert_time",                 default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  add_foreign_key "andrew_question_sets", "andrew_users", column: "andrew_users_id", name: "fk_andrew_users_id_to_andrew_question_sets", on_delete: :cascade
  add_foreign_key "app_bldr_fields", "users", column: "insert_by", primary_key: "user_id", name: "fk_fields_insert_by"
  add_foreign_key "app_bldr_fields", "users", column: "update_by", primary_key: "user_id", name: "fk_fields_update_by"
  add_foreign_key "app_bldr_forms", "app_bldr_templates", column: "template_id", primary_key: "template_id", name: "fk_forms_template_id"
  add_foreign_key "app_bldr_forms", "users", column: "insert_by", primary_key: "user_id", name: "fk_forms_insert_by"
  add_foreign_key "app_bldr_forms", "users", column: "recipient_user_id", primary_key: "user_id", name: "fk_forms_recipient_user_id"
  add_foreign_key "app_bldr_forms", "users", column: "update_by", primary_key: "user_id", name: "fk_forms_update_by"
  add_foreign_key "app_bldr_submissions", "app_bldr_fields", column: "field_id", primary_key: "field_id", name: "fk_submissions_field_id"
  add_foreign_key "app_bldr_submissions", "app_bldr_forms", column: "form_id", primary_key: "form_id", name: "fk_submissions_form_id"
  add_foreign_key "app_bldr_submissions", "users", column: "insert_by", primary_key: "user_id", name: "fk_submissions_insert_by"
  add_foreign_key "app_bldr_submissions", "users", column: "update_by", primary_key: "user_id", name: "fk_submissions_update_by"
  add_foreign_key "app_bldr_template_fields", "app_bldr_fields", column: "field_id", primary_key: "field_id", name: "fk_template_fields_field_id"
  add_foreign_key "app_bldr_template_fields", "app_bldr_templates", column: "template_id", primary_key: "template_id", name: "fk_template_fields_template_id"
  add_foreign_key "app_bldr_template_fields", "users", column: "insert_by", primary_key: "user_id", name: "fk_template_fields_insert_by"
  add_foreign_key "app_bldr_template_fields", "users", column: "update_by", primary_key: "user_id", name: "fk_template_fields_update_by"
  add_foreign_key "app_bldr_templates", "users", column: "insert_by", primary_key: "user_id", name: "fk_templates_insert_by"
  add_foreign_key "app_bldr_templates", "users", column: "update_by", primary_key: "user_id", name: "fk_templates_update_by"
end
