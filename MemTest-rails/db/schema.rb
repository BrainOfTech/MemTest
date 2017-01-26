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

ActiveRecord::Schema.define(version: 20170126212017) do

  create_table "associations", force: :cascade do |t|
    t.string   "label"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interactions", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "response"
    t.datetime "prompt_time"
    t.integer  "thinking_milis"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["question_id"], name: "index_interactions_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "prompt"
    t.string   "choice1"
    t.string   "choice2"
    t.string   "choice3"
    t.string   "choice4"
    t.integer  "correctIndex"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
