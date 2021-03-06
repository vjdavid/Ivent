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

ActiveRecord::Schema.define(version: 20140219055146) do

  create_table "resguardos", force: true do |t|
    t.string   "no_resguardo"
    t.string   "concepto"
    t.string   "descripcion"
    t.string   "marca"
    t.string   "modelo"
    t.string   "imagen"
    t.string   "no_serie"
    t.string   "precio"
    t.string   "valor_actual"
    t.string   "ubicacion"
    t.string   "estado"
    t.date     "f_compra"
    t.string   "conectividad"
    t.string   "peso"
    t.string   "proveedor"
    t.string   "notas"
    t.string   "garantia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
