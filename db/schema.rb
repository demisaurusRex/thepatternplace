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

ActiveRecord::Schema[7.0].define(version: 2023_01_28_034553) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
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
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.bigint "pattern_id", null: false
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["pattern_id"], name: "index_categories_on_pattern_id"
  end

  create_table "custom_categories", force: :cascade do |t|
    t.integer "position"
    t.string "name"
    t.bigint "customised_instruction_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "showing", default: false
    t.index ["customised_instruction_id"], name: "index_custom_categories_on_customised_instruction_id"
  end

  create_table "customised_instruction_steps", force: :cascade do |t|
    t.bigint "instruction_id", null: false
    t.bigint "customised_instruction_id", null: false
    t.integer "position"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "custom_category_id", null: false
    t.index ["custom_category_id"], name: "index_customised_instruction_steps_on_custom_category_id"
    t.index ["customised_instruction_id"], name: "index_customised_instruction_steps_on_customised_instruction_id"
    t.index ["instruction_id"], name: "index_customised_instruction_steps_on_instruction_id"
  end

  create_table "customised_instructions", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_customised_instructions_on_order_id"
  end

  create_table "instructions", force: :cascade do |t|
    t.bigint "pattern_id", null: false
    t.text "description"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_instructions_on_category_id"
    t.index ["pattern_id"], name: "index_instructions_on_pattern_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.bigint "pattern_id", null: false
    t.bigint "cart_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["pattern_id"], name: "index_line_items_on_pattern_id"
    t.index ["user_id"], name: "index_line_items_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "pattern_id", null: false
    t.decimal "price_paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pattern_id"], name: "index_orders_on_pattern_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "patterns", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "difficulty"
    t.integer "price"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "instruction_format"
    t.index ["user_id"], name: "index_patterns_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "user_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_reviews_on_order_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "categories", "patterns"
  add_foreign_key "custom_categories", "customised_instructions"
  add_foreign_key "customised_instruction_steps", "custom_categories"
  add_foreign_key "customised_instruction_steps", "customised_instructions"
  add_foreign_key "customised_instruction_steps", "instructions"
  add_foreign_key "customised_instructions", "orders"
  add_foreign_key "instructions", "categories"
  add_foreign_key "instructions", "patterns"
  add_foreign_key "line_items", "carts"
  add_foreign_key "line_items", "patterns"
  add_foreign_key "line_items", "users"
  add_foreign_key "orders", "patterns"
  add_foreign_key "orders", "users"
  add_foreign_key "patterns", "users"
  add_foreign_key "reviews", "orders"
  add_foreign_key "reviews", "users"
end
