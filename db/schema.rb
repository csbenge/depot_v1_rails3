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

ActiveRecord::Schema.define(:version => 20120716214043) do

  create_table "artifacts", :force => true do |t|
    t.string   "art_name"
    t.string   "art_desc"
    t.integer  "art_type"
    t.string   "art_version"
    t.integer  "package_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "art_url"
  end

  add_index "artifacts", ["package_id"], :name => "index_artifacts_on_package_id"

  create_table "credentials", :force => true do |t|
    t.integer  "depot_id"
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "db_profiles", :force => true do |t|
    t.string   "db_name"
    t.string   "db_description"
    t.string   "db_type"
    t.string   "db_driver"
    t.string   "db_driver_path"
    t.string   "db_url"
    t.string   "db_username"
    t.string   "db_password"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "depots", :force => true do |t|
    t.string   "dep_name"
    t.string   "dep_desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "dep_status"
    t.integer  "dep_type"
    t.string   "dep_url"
  end

  create_table "packages", :force => true do |t|
    t.string   "pkg_name"
    t.string   "pkg_desc"
    t.integer  "pkg_type"
    t.string   "pkg_version"
    t.integer  "depot_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "pkg_status"
    t.string   "pkg_url"
  end

  add_index "packages", ["depot_id"], :name => "index_packages_on_depot_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "read",        :default => 0
    t.integer  "write",       :default => 0
    t.integer  "execute",     :default => 0
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "up_loads", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "email"
    t.string   "role_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "firstname"
    t.string   "lastname"
  end

end
