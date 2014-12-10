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

ActiveRecord::Schema.define(:version => 20141210012320) do

  create_table "bus_schedules", :force => true do |t|
    t.float    "price"
    t.time     "arrival_time"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "stop_id"
    t.integer  "route_id"
  end

  create_table "buses", :force => true do |t|
    t.string   "type"
    t.integer  "year"
    t.integer  "capacity"
    t.string   "maintenance_status"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "route_id"
  end

  create_table "employee_schedules", :force => true do |t|
    t.time     "startTime"
    t.time     "endTime"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "bus_id"
  end

  create_table "employees", :force => true do |t|
    t.string   "FirstName"
    t.string   "MiddleName"
    t.string   "LastName"
    t.float    "Pay"
    t.date     "Birthday"
    t.string   "Address"
    t.string   "Email"
    t.integer  "role_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "schedule_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "RoleName"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "routes", :force => true do |t|
    t.string   "Name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stops", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
