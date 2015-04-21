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

ActiveRecord::Schema.define(version: 20150421110110) do

  create_table "acta", force: :cascade do |t|
    t.integer  "proyecto_id",      limit: 4
    t.date     "acta_fecha"
    t.integer  "acta_correlativo", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "elementos", force: :cascade do |t|
    t.integer  "tipoElemento_id",      limit: 4
    t.integer  "tema_id",              limit: 4
    t.integer  "elemento_correlativo", limit: 4
    t.text     "elemento_descripcion", limit: 65535
    t.date     "elemento_fechaInicio"
    t.date     "elemento_fechaFinal"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "proyectos", force: :cascade do |t|
    t.string   "proyecto_nombre",      limit: 255
    t.text     "proyecto_descripcion", limit: 65535
    t.date     "proyecto_inicio"
    t.date     "proyecto_final"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "temas", force: :cascade do |t|
    t.integer  "acta_id",          limit: 4
    t.string   "tema_nombre",      limit: 255
    t.text     "tema_descripcion", limit: 65535
    t.string   "tema_estado",      limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "tipo_elementos", force: :cascade do |t|
    t.string   "tipoElemento_nombre", limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
