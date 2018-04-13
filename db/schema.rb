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

ActiveRecord::Schema.define(version: 20180412091942) do

  create_table "books", primary_key: "id_books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "books_categories_id"
    t.string "books_name"
    t.string "books_writer"
    t.string "books_publisher"
    t.string "books_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["books_categories_id"], name: "index_books_on_books_categories_id"
  end

  create_table "books_categories", primary_key: "id_category", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "category_name"
    t.string "category_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
