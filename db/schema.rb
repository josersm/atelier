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

ActiveRecord::Schema[7.0].define(version: 2023_08_31_103052) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "company_name"
    t.string "bic_number"
    t.string "email"
    t.integer "contact_number"
    t.string "country"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_brands_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "brand_id", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id", "supplier_id"], name: "index_favorites_on_brand_id_and_supplier_id", unique: true
    t.index ["brand_id"], name: "index_favorites_on_brand_id"
    t.index ["supplier_id"], name: "index_favorites_on_supplier_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.string "description"
    t.integer "quantity_xs"
    t.integer "quantity_s"
    t.integer "quantity_m"
    t.integer "quantity_l"
    t.integer "quantity_xl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["project_id"], name: "index_products_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "delivery_mode"
    t.bigint "brand_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "status"
    t.bigint "supplier_id"
    t.index ["brand_id"], name: "index_projects_on_brand_id"
    t.index ["supplier_id"], name: "index_projects_on_supplier_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.float "rating"
    t.text "comment"
    t.bigint "brand_id", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_reviews_on_brand_id"
    t.index ["supplier_id"], name: "index_reviews_on_supplier_id"
  end

  create_table "supplier_materials", force: :cascade do |t|
    t.bigint "material_id", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_supplier_materials_on_material_id"
    t.index ["supplier_id"], name: "index_supplier_materials_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.string "country"
    t.string "email"
    t.integer "phone_number"
    t.string "price_rating"
    t.float "sustainability_rating"
    t.integer "minimum_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_suppliers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favorites", "brands"
  add_foreign_key "favorites", "suppliers"
  add_foreign_key "products", "projects"
  add_foreign_key "projects", "brands"
  add_foreign_key "reviews", "brands"
  add_foreign_key "reviews", "suppliers"
  add_foreign_key "supplier_materials", "materials"
  add_foreign_key "supplier_materials", "suppliers"
end
