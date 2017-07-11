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

ActiveRecord::Schema.define(version: 20170711140114) do

  create_table "access_codes", force: :cascade do |t|
    t.string "code", null: false
    t.date "expires_at"
    t.index ["code"], name: "index_access_codes_on_code", unique: true
  end

  create_table "archive_formats", force: :cascade do |t|
    t.integer "profile_id", null: false
    t.string "codec", null: false
    t.integer "initial_bitrate", null: false
    t.integer "initial_channels", null: false
    t.integer "max_public_bitrate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "download_permission"
    t.integer "max_logged_in_bitrate"
    t.integer "max_priviledged_bitrate"
    t.string "priviledged_groups"
    t.index ["profile_id"], name: "index_archive_formats_on_profile_id"
  end

  create_table "audio_files", force: :cascade do |t|
    t.integer "broadcast_id", null: false
    t.string "path", null: false
    t.string "codec", null: false
    t.integer "bitrate", null: false
    t.integer "channels", null: false
    t.integer "playback_format_id"
    t.datetime "created_at", null: false
    t.index ["broadcast_id"], name: "index_audio_files_on_broadcast_id"
    t.index ["path"], name: "index_audio_files_on_path", unique: true
    t.index ["playback_format_id"], name: "index_audio_files_on_playback_format_id"
  end

  create_table "broadcasts", force: :cascade do |t|
    t.integer "show_id", null: false
    t.string "label", null: false
    t.datetime "started_at", null: false
    t.datetime "finished_at", null: false
    t.string "people"
    t.text "details"
    t.index ["finished_at"], name: "index_broadcasts_on_finished_at", unique: true
    t.index ["show_id"], name: "index_broadcasts_on_show_id"
    t.index ["started_at"], name: "index_broadcasts_on_started_at", unique: true
  end

  create_table "downgrade_actions", force: :cascade do |t|
    t.integer "archive_format_id", null: false
    t.integer "months", null: false
    t.integer "bitrate"
    t.integer "channels"
    t.index ["archive_format_id"], name: "index_downgrade_actions_on_archive_format_id"
  end

  create_table "playback_formats", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "codec", null: false
    t.integer "bitrate", null: false
    t.integer "channels", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.boolean "default", default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name"], name: "index_profiles_on_name", unique: true
  end

  create_table "shows", force: :cascade do |t|
    t.string "name", null: false
    t.text "details"
    t.integer "profile_id", null: false
    t.index ["name"], name: "index_shows_on_name", unique: true
    t.index ["profile_id"], name: "index_shows_on_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "groups"
    t.string "api_key", null: false
    t.datetime "api_key_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["api_key"], name: "index_users_on_api_key", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
