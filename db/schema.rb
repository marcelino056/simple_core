# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_06_024422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "name"
    t.string "aasm_state"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_accounts_on_confirmation_token", unique: true
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_accounts_on_unlock_token", unique: true
  end

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "description"
    t.bigint "sector_id", null: false
    t.string "street"
    t.datetime "deleted_at"
    t.string "aasm_state"
    t.bigint "entity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entity_id"], name: "index_addresses_on_entity_id"
    t.index ["sector_id"], name: "index_addresses_on_sector_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "aasm_state"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "province_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["province_id"], name: "index_cities_on_province_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coupons", force: :cascade do |t|
    t.string "code"
    t.string "free_trial_length"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name"
    t.string "simbol"
    t.string "aasm_state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "emails", force: :cascade do |t|
    t.bigint "entity_id", null: false
    t.string "email"
    t.string "aasm_state"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entity_id"], name: "index_emails_on_entity_id"
  end

  create_table "entities", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "gender"
    t.string "aasm_state"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "identifications", force: :cascade do |t|
    t.integer "category"
    t.string "value"
    t.string "aasm_state"
    t.datetime "deleted_at"
    t.bigint "entity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entity_id"], name: "index_identifications_on_entity_id"
  end

  create_table "offert_products", force: :cascade do |t|
    t.bigint "offert_id", null: false
    t.bigint "product_id", null: false
    t.float "price_per_unit"
    t.float "unit_amount"
    t.datetime "deleted_at"
    t.string "aasm_state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["offert_id"], name: "index_offert_products_on_offert_id"
    t.index ["product_id"], name: "index_offert_products_on_product_id"
  end

  create_table "offerts", force: :cascade do |t|
    t.string "title"
    t.date "starting_at"
    t.date "ending_at"
    t.integer "offert_type"
    t.string "value"
    t.string "condition"
    t.datetime "deleted_at"
    t.string "aasm_state"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "name"
    t.integer "days"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phones", force: :cascade do |t|
    t.bigint "entity_id", null: false
    t.string "number"
    t.string "aasm_state"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entity_id"], name: "index_phones_on_entity_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.string "stripe_id"
    t.float "price"
    t.string "interval"
    t.text "features"
    t.boolean "highlight"
    t.integer "display_order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "deleted_at"
    t.string "meta"
    t.string "aasm_state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_costs", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.float "amount"
    t.datetime "deleted_at"
    t.string "aasm_state"
    t.bigint "currency_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["currency_id"], name: "index_product_costs_on_currency_id"
    t.index ["product_id"], name: "index_product_costs_on_product_id"
  end

  create_table "product_prices", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "currency_id", null: false
    t.string "aasm_state"
    t.decimal "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["currency_id"], name: "index_product_prices_on_currency_id"
    t.index ["product_id"], name: "index_product_prices_on_product_id"
  end

  create_table "product_providers", force: :cascade do |t|
    t.bigint "entity_id", null: false
    t.bigint "product_id", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entity_id"], name: "index_product_providers_on_entity_id"
    t.index ["product_id"], name: "index_product_providers_on_product_id"
  end

  create_table "product_transactions", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.integer "tranaction_type"
    t.string "aasm_state"
    t.datetime "deleted_at"
    t.float "amount"
    t.bigint "product_price_id", null: false
    t.bigint "product_cost_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_cost_id"], name: "index_product_transactions_on_product_cost_id"
    t.index ["product_id"], name: "index_product_transactions_on_product_id"
    t.index ["product_price_id"], name: "index_product_transactions_on_product_price_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.bigint "product_category_id", null: false
    t.datetime "deleted_at"
    t.boolean "allow_with_out_stock"
    t.string "aasm_state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_provinces_on_country_id"
  end

  create_table "purchase_details", force: :cascade do |t|
    t.bigint "purchase_id", null: false
    t.bigint "product_id", null: false
    t.float "quantity"
    t.float "cost"
    t.datetime "deleted_at"
    t.string "aasm_state"
    t.datetime "returned_at"
    t.datetime "received_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_purchase_details_on_product_id"
    t.index ["purchase_id"], name: "index_purchase_details_on_purchase_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.datetime "requested_at"
    t.date "estimate_date_arribe"
    t.bigint "payment_method_id", null: false
    t.bigint "entity_id", null: false
    t.string "comments"
    t.datetime "deleted_at"
    t.string "aasm_state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entity_id"], name: "index_purchases_on_entity_id"
    t.index ["payment_method_id"], name: "index_purchases_on_payment_method_id"
  end

  create_table "sale_details", force: :cascade do |t|
    t.bigint "sale_id", null: false
    t.bigint "product_id", null: false
    t.float "quantity"
    t.bigint "product_price_id", null: false
    t.string "aasm_state"
    t.datetime "deleted_at"
    t.datetime "returned_at"
    t.datetime "delivered_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_sale_details_on_product_id"
    t.index ["product_price_id"], name: "index_sale_details_on_product_price_id"
    t.index ["sale_id"], name: "index_sale_details_on_sale_id"
  end

  create_table "sales", force: :cascade do |t|
    t.bigint "payment_method_id", null: false
    t.bigint "entity_id", null: false
    t.datetime "delivered_at"
    t.datetime "requested_at"
    t.string "aasm_state"
    t.datetime "deleted_at"
    t.bigint "address_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_sales_on_address_id"
    t.index ["entity_id"], name: "index_sales_on_entity_id"
    t.index ["payment_method_id"], name: "index_sales_on_payment_method_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.bigint "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_sectors_on_city_id"
  end

  create_table "settings", force: :cascade do |t|
    t.string "var", null: false
    t.text "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["var"], name: "index_settings_on_var", unique: true
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "stripe_id"
    t.integer "plan_id"
    t.string "last_four"
    t.integer "coupon_id"
    t.string "card_type"
    t.float "current_price"
    t.integer "account_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "first_name"
    t.string "last_name"
    t.datetime "deleted_at"
    t.bigint "account_id"
    t.string "aasm_state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_users_on_account_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.text "object_changes"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "addresses", "entities"
  add_foreign_key "addresses", "sectors"
  add_foreign_key "cities", "provinces"
  add_foreign_key "emails", "entities"
  add_foreign_key "identifications", "entities"
  add_foreign_key "offert_products", "offerts"
  add_foreign_key "offert_products", "products"
  add_foreign_key "phones", "entities"
  add_foreign_key "product_costs", "currencies"
  add_foreign_key "product_costs", "products"
  add_foreign_key "product_prices", "currencies"
  add_foreign_key "product_prices", "products"
  add_foreign_key "product_providers", "entities"
  add_foreign_key "product_providers", "products"
  add_foreign_key "product_transactions", "product_costs"
  add_foreign_key "product_transactions", "product_prices"
  add_foreign_key "product_transactions", "products"
  add_foreign_key "products", "product_categories"
  add_foreign_key "provinces", "countries"
  add_foreign_key "purchase_details", "products"
  add_foreign_key "purchase_details", "purchases"
  add_foreign_key "purchases", "entities"
  add_foreign_key "purchases", "payment_methods"
  add_foreign_key "sale_details", "product_prices"
  add_foreign_key "sale_details", "products"
  add_foreign_key "sale_details", "sales"
  add_foreign_key "sales", "addresses"
  add_foreign_key "sales", "entities"
  add_foreign_key "sales", "payment_methods"
  add_foreign_key "sectors", "cities"
end
