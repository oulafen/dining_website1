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

ActiveRecord::Schema.define(version: 20140427142937) do

  create_table "labels", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "label_name"
  end

  create_table "merchant_addrs", force: true do |t|
    t.string   "addr"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "merchant_labels", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "label_id"
  end

  create_table "merchant_phones", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "phone"
  end

  create_table "merchants", force: true do |t|
    t.string   "user_name"
    t.string   "restaurant_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login_type",      default: "user"
    t.string   "password_digest"
    t.string   "remark"
    t.string   "addr",            default: " "
    t.string   "phone",           default: " "
    t.string   "logo",            default: " "
    t.string   "label",           default: " "
  end

end
