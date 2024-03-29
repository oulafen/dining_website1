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

ActiveRecord::Schema.define(version: 20140429011044) do

  create_table "label_classes", force: true do |t|
    t.string   "class"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labels", force: true do |t|
    t.string   "content"
    t.string   "class"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merchants", force: true do |t|
    t.string   "user_name"
    t.string   "restaurant_name"
    t.string   "login_type",      default: "user"
    t.string   "password_digest"
    t.string   "remark"
    t.string   "addr"
    t.integer  "phone"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "label_id"
  end

end
