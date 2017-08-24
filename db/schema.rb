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

ActiveRecord::Schema.define(version: 20170730052722) do

  create_table "tasks", force: :cascade do |t|
    t.integer  "todo_list_id"
    t.string   "name"
    t.boolean  "completed"
    t.date     "due"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "dstatus"
    t.string   "dnotes"
    t.string   "drowid"
    t.index ["todo_list_id"], name: "index_tasks_on_todo_list_id"
  end

  create_table "todo_lists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "purpose"
    t.string   "weather"
    t.string   "mission"
    t.string   "observer"
    t.string   "operator"
    t.date     "date"
    t.string   "time"
    t.text     "gnotes"
    t.integer  "dronetotal"
    t.integer  "dronegood"
  end

end
