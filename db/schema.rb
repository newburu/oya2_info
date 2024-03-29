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

ActiveRecord::Schema[7.0].define(version: 2023_07_16_051909) do
  create_table "assessments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.bigint "created_by_id"
    t.datetime "updated_at", null: false
    t.bigint "updated_by_id"
    t.datetime "deleted_at"
    t.bigint "deleted_by_id"
    t.index ["created_by_id"], name: "index_assessments_on_created_by_id"
    t.index ["deleted_by_id"], name: "index_assessments_on_deleted_by_id"
    t.index ["updated_by_id"], name: "index_assessments_on_updated_by_id"
  end

  create_table "brands", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "store_id", null: false
    t.string "name"
    t.json "images"
    t.datetime "created_at", null: false
    t.bigint "created_by_id"
    t.datetime "updated_at", null: false
    t.bigint "updated_by_id"
    t.datetime "deleted_at"
    t.bigint "deleted_by_id"
    t.index ["created_by_id"], name: "index_brands_on_created_by_id"
    t.index ["deleted_by_id"], name: "index_brands_on_deleted_by_id"
    t.index ["store_id"], name: "index_brands_on_store_id"
    t.index ["updated_by_id"], name: "index_brands_on_updated_by_id"
  end

  create_table "items", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.string "name"
    t.date "release_at"
    t.json "images"
    t.datetime "created_at", null: false
    t.bigint "created_by_id"
    t.datetime "updated_at", null: false
    t.bigint "updated_by_id"
    t.datetime "deleted_at"
    t.bigint "deleted_by_id"
    t.index ["created_by_id"], name: "index_items_on_created_by_id"
    t.index ["deleted_by_id"], name: "index_items_on_deleted_by_id"
    t.index ["product_id"], name: "index_items_on_product_id"
    t.index ["updated_by_id"], name: "index_items_on_updated_by_id"
  end

  create_table "news", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "message"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "brand_id", null: false
    t.string "name"
    t.json "images"
    t.datetime "created_at", null: false
    t.bigint "created_by_id"
    t.datetime "updated_at", null: false
    t.bigint "updated_by_id"
    t.datetime "deleted_at"
    t.bigint "deleted_by_id"
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["created_by_id"], name: "index_products_on_created_by_id"
    t.index ["deleted_by_id"], name: "index_products_on_deleted_by_id"
    t.index ["updated_by_id"], name: "index_products_on_updated_by_id"
  end

  create_table "report_assessments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "report_id", null: false
    t.bigint "assessment_id", null: false
    t.integer "value"
    t.datetime "created_at", null: false
    t.bigint "created_by_id"
    t.datetime "updated_at", null: false
    t.bigint "updated_by_id"
    t.datetime "deleted_at"
    t.bigint "deleted_by_id"
    t.index ["assessment_id"], name: "index_report_assessments_on_assessment_id"
    t.index ["created_by_id"], name: "index_report_assessments_on_created_by_id"
    t.index ["deleted_by_id"], name: "index_report_assessments_on_deleted_by_id"
    t.index ["report_id"], name: "index_report_assessments_on_report_id"
    t.index ["updated_by_id"], name: "index_report_assessments_on_updated_by_id"
  end

  create_table "reports", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "item_id", null: false
    t.bigint "owner_id"
    t.string "title"
    t.text "detail"
    t.date "bought_at"
    t.json "images"
    t.datetime "created_at", null: false
    t.bigint "created_by_id"
    t.datetime "updated_at", null: false
    t.bigint "updated_by_id"
    t.datetime "deleted_at"
    t.bigint "deleted_by_id"
    t.index ["created_by_id"], name: "index_reports_on_created_by_id"
    t.index ["deleted_by_id"], name: "index_reports_on_deleted_by_id"
    t.index ["item_id"], name: "index_reports_on_item_id"
    t.index ["owner_id"], name: "index_reports_on_owner_id"
    t.index ["updated_by_id"], name: "index_reports_on_updated_by_id"
  end

  create_table "stores", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.json "images"
    t.datetime "created_at", null: false
    t.bigint "created_by_id"
    t.datetime "updated_at", null: false
    t.bigint "updated_by_id"
    t.datetime "deleted_at"
    t.bigint "deleted_by_id"
    t.index ["created_by_id"], name: "index_stores_on_created_by_id"
    t.index ["deleted_by_id"], name: "index_stores_on_deleted_by_id"
    t.index ["updated_by_id"], name: "index_stores_on_updated_by_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.bigint "uid"
    t.string "name"
    t.string "screen_name"
    t.string "provider"
    t.string "password"
    t.string "access_token"
    t.string "access_token_secret"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assessments", "users", column: "created_by_id"
  add_foreign_key "assessments", "users", column: "deleted_by_id"
  add_foreign_key "assessments", "users", column: "updated_by_id"
  add_foreign_key "brands", "stores"
  add_foreign_key "brands", "users", column: "created_by_id"
  add_foreign_key "brands", "users", column: "deleted_by_id"
  add_foreign_key "brands", "users", column: "updated_by_id"
  add_foreign_key "items", "products"
  add_foreign_key "items", "users", column: "created_by_id"
  add_foreign_key "items", "users", column: "deleted_by_id"
  add_foreign_key "items", "users", column: "updated_by_id"
  add_foreign_key "products", "brands"
  add_foreign_key "products", "users", column: "created_by_id"
  add_foreign_key "products", "users", column: "deleted_by_id"
  add_foreign_key "products", "users", column: "updated_by_id"
  add_foreign_key "report_assessments", "assessments"
  add_foreign_key "report_assessments", "reports"
  add_foreign_key "report_assessments", "users", column: "created_by_id"
  add_foreign_key "report_assessments", "users", column: "deleted_by_id"
  add_foreign_key "report_assessments", "users", column: "updated_by_id"
  add_foreign_key "reports", "items"
  add_foreign_key "reports", "users", column: "created_by_id"
  add_foreign_key "reports", "users", column: "deleted_by_id"
  add_foreign_key "reports", "users", column: "owner_id"
  add_foreign_key "reports", "users", column: "updated_by_id"
  add_foreign_key "stores", "users", column: "created_by_id"
  add_foreign_key "stores", "users", column: "deleted_by_id"
  add_foreign_key "stores", "users", column: "updated_by_id"
end
