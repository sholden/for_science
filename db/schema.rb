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

ActiveRecord::Schema.define(version: 20140116160341) do

  create_table "comments", id: false, force: true do |t|
    t.string   "subreddit_id"
    t.string   "banned_by"
    t.string   "subreddit"
    t.string   "likes"
    t.string   "replies"
    t.string   "saved"
    t.string   "id"
    t.string   "gilded"
    t.string   "author"
    t.string   "parent_id"
    t.string   "approved_by"
    t.string   "body"
    t.string   "edited"
    t.string   "author_flair_css_class"
    t.string   "downs"
    t.string   "body_html"
    t.string   "link_id"
    t.string   "score_hidden"
    t.string   "name"
    t.string   "created"
    t.string   "author_flair_text"
    t.string   "created_utc"
    t.string   "distinguished"
    t.string   "num_reports"
    t.string   "ups"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", id: false, force: true do |t|
    t.string   "id"
    t.string   "domain"
    t.string   "banned_by"
    t.integer  "media_embed"
    t.string   "subreddit"
    t.string   "selftext_html"
    t.string   "selftext"
    t.string   "likes"
    t.string   "secure_media"
    t.string   "link_flair_text"
    t.integer  "secure_media_embed"
    t.integer  "clicked"
    t.integer  "stickied"
    t.string   "author"
    t.string   "media"
    t.integer  "score"
    t.string   "approved_by"
    t.integer  "over_18"
    t.integer  "hidden"
    t.string   "thumbnail"
    t.string   "subreddit_id"
    t.integer  "edited"
    t.string   "link_flair_css_class"
    t.string   "author_flair_css_class"
    t.integer  "downs"
    t.integer  "saved"
    t.integer  "is_self"
    t.string   "permalink"
    t.string   "name"
    t.integer  "created"
    t.string   "url"
    t.string   "author_flair_text"
    t.string   "title"
    t.integer  "created_utc"
    t.integer  "ups"
    t.integer  "num_comments"
    t.integer  "visited"
    t.string   "num_reports"
    t.string   "distinguished"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "word_counts", force: true do |t|
    t.string   "word"
    t.integer  "count"
    t.string   "link_id"
    t.string   "comment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "word_counts", ["comment_id"], name: "index_word_counts_on_comment_id"
  add_index "word_counts", ["link_id"], name: "index_word_counts_on_link_id"
  add_index "word_counts", ["word"], name: "index_word_counts_on_word"

end
