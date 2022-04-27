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

ActiveRecord::Schema.define(version: 2022_04_14_114324) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
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

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "aquaria", force: :cascade do |t|
    t.string "name"
    t.string "reading"
    t.string "prefecture"
    t.string "place"
    t.string "information"
    t.string "homepage"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "category_seconds", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.integer "order"
    t.integer "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_category_seconds_on_category_id"
  end

  create_table "columned_bies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "creatures", force: :cascade do |t|
    t.string "japanese_name"
    t.string "scientific_name"
    t.string "information"
    t.integer "category_second_id"
    t.integer "columned_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_second_id"], name: "index_creatures_on_category_second_id"
    t.index ["columned_by_id"], name: "index_creatures_on_columned_by_id"
  end

  create_table "fees", force: :cascade do |t|
    t.string "title"
    t.integer "price"
    t.integer "aquarium_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["aquarium_id"], name: "index_fees_on_aquarium_id"
  end

  create_table "photo_bies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "photo_sets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "caption"
    t.integer "photo_num"
    t.integer "creature_id"
    t.integer "photo_by_id"
    t.integer "aquarium_id"
    t.integer "photo_set_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["aquarium_id"], name: "index_photos_on_aquarium_id"
    t.index ["creature_id"], name: "index_photos_on_creature_id"
    t.index ["photo_by_id"], name: "index_photos_on_photo_by_id"
    t.index ["photo_set_id"], name: "index_photos_on_photo_set_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "category_seconds", "categories"
  add_foreign_key "creatures", "category_seconds"
  add_foreign_key "creatures", "columned_bies"
  add_foreign_key "fees", "aquaria"
  add_foreign_key "photos", "aquaria"
  add_foreign_key "photos", "creatures"
  add_foreign_key "photos", "photo_bies"
  add_foreign_key "photos", "photo_sets"
end
