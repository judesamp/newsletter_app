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

ActiveRecord::Schema.define(version: 20140428194444) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "summary"
    t.text     "body"
    t.text     "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_id"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.date     "event_start_date"
    t.date     "event_end_date"
    t.date     "expire_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_id"
  end

  create_table "newsletter_issues", force: true do |t|
    t.string   "title"
    t.integer  "number"
    t.string   "status"
    t.date     "publish_on"
    t.date     "publish_date"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.string   "street_adress"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "email"
    t.string   "newsletter_title"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.integer  "position"
    t.string   "newsletter_issue_id"
    t.string   "article_id"
    t.string   "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
