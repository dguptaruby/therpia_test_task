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

ActiveRecord::Schema.define(version: 2022_09_23_062230) do

  create_table "action_text_rich_texts", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.text "body", size: :long
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", charset: "utf8mb4", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "cities", charset: "utf8mb4", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "post_code"
    t.datetime "startdate"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "country_id", null: false
    t.bigint "state_id", null: false
    t.bigint "city_id", null: false
    t.index ["city_id"], name: "index_companies_on_city_id"
    t.index ["country_id"], name: "index_companies_on_country_id"
    t.index ["state_id"], name: "index_companies_on_state_id"
  end

  create_table "countries", charset: "utf8mb4", force: :cascade do |t|
    t.string "country_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", charset: "utf8mb4", force: :cascade do |t|
    t.string "real_name"
    t.string "image_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_images_on_user_id"
  end

  create_table "nodes", charset: "utf8mb4", force: :cascade do |t|
    t.string "node_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "place_id", null: false
    t.index ["place_id"], name: "index_nodes_on_place_id"
  end

  create_table "places", charset: "utf8mb4", force: :cascade do |t|
    t.string "place_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "company_id", null: false
    t.index ["company_id"], name: "index_places_on_company_id"
  end

  create_table "regions", charset: "utf8mb4", force: :cascade do |t|
    t.string "region_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", charset: "utf8mb4", force: :cascade do |t|
    t.string "state_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_regions", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "region_id", null: false
    t.index ["region_id"], name: "index_user_regions_on_region_id"
    t.index ["user_id"], name: "index_user_regions_on_user_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.decimal "monthly_charge", precision: 10
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean "is_active"
    t.string "user_role"
    t.text "notes"
    t.bigint "company_id", null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "companies", "cities"
  add_foreign_key "companies", "countries"
  add_foreign_key "companies", "states"
  add_foreign_key "images", "users"
  add_foreign_key "nodes", "places"
  add_foreign_key "places", "companies"
  add_foreign_key "user_regions", "regions"
  add_foreign_key "user_regions", "users"
  add_foreign_key "users", "companies"
end
