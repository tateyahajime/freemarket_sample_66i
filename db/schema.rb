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

ActiveRecord::Schema.define(version: 2020_01_14_123741) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "brands_name"
    t.bigint "items_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["items_id"], name: "index_brands_on_items_id"
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.string "image5"
    t.string "image6"
    t.string "image7"
    t.string "image8"
    t.string "image9"
    t.string "image10"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_images_on_item_id"
  end

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "item_name"
    t.string "price"
    t.string "brand"
    t.float "size"
    t.string "condition"
    t.bigint "x_category_id"
    t.bigint "y_category_id"
    t.bigint "z_category_id"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_items_on_user_id"
    t.index ["x_category_id"], name: "index_items_on_x_category_id"
    t.index ["y_category_id"], name: "index_items_on_y_category_id"
    t.index ["z_category_id"], name: "index_items_on_z_category_id"
  end

  create_table "messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "message"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "pays", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "number"
    t.date "expiration_date_month"
    t.date "expiration_date_year"
    t.integer "code"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pays_on_user_id"
  end

  create_table "shippings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "charges"
    t.string "first_name"
    t.string "last_name"
    t.string "kana_first_name"
    t.string "kana_last_name"
    t.integer "zip_code"
    t.string "prefectures"
    t.string "city"
    t.string "street"
    t.string "building_name"
    t.string "phone"
    t.string "area"
    t.date "date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shippings_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nickname", default: "", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "kana_first_name", null: false
    t.string "kana_last_name", null: false
    t.string "zip_code", null: false
    t.string "prefectures", default: "0", null: false
    t.string "city", null: false
    t.string "street", null: false
    t.string "building", null: false
    t.string "tell"
    t.string "phone", null: false
    t.string "birth_year", null: false
    t.string "birth_month", null: false
    t.string "birth_day", default: ""
    t.string "number"
    t.string "expiration_date_month"
    t.string "expiration_date_year"
    t.string "code"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "x_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "x_category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "x_categroys", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "z_category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "y_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "y_category_name"
    t.bigint "x_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["x_category_id"], name: "index_y_categories_on_x_category_id"
  end

  create_table "z_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "z_category_name"
    t.bigint "y_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["y_category_id"], name: "index_z_categories_on_y_category_id"
  end

  add_foreign_key "images", "items"
  add_foreign_key "items", "users"
  add_foreign_key "items", "x_categories"
  add_foreign_key "items", "y_categories"
  add_foreign_key "items", "z_categories"
  add_foreign_key "messages", "users"
  add_foreign_key "pays", "users"
  add_foreign_key "shippings", "users"
  add_foreign_key "y_categories", "x_categories"
  add_foreign_key "z_categories", "y_categories"
end
