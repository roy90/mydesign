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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121013152748) do

  create_table "admins", :force => true do |t|
    t.string   "adname"
    t.string   "ademail"
    t.string   "adpass"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "assistants", :force => true do |t|
    t.string   "assname"
    t.string   "assemail"
    t.string   "asspass"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "banners", :force => true do |t|
    t.float    "bansize"
    t.integer  "banquantity"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "buntings", :force => true do |t|
    t.float    "buntingsize"
    t.integer  "buntingquantity"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "cards", :force => true do |t|
    t.string   "cardtype"
    t.integer  "cardside"
    t.integer  "cardquantity"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "cusname"
    t.string   "cusemail"
    t.string   "cusadd"
    t.string   "cuspostcode"
    t.string   "cuscity"
    t.string   "cusphone"
    t.date     "cusdate"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "orderpayments", :force => true do |t|
    t.integer  "order_id"
    t.integer  "payment_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "ad_id"
    t.integer  "cus_id"
    t.integer  "ban_id"
    t.integer  "bun_id"
    t.integer  "bus_id"
    t.integer  "pos_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orderstats", :force => true do |t|
    t.string   "info"
    t.integer  "order_id"
    t.integer  "ass_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payments", :force => true do |t|
    t.string   "paymentype"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posters", :force => true do |t|
    t.float    "possize"
    t.integer  "posquantity"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
