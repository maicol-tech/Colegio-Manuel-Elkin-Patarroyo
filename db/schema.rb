# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_23_014808) do

  create_table "anotaciones", force: :cascade do |t|
    t.string "titulo"
    t.integer "estudiante_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "fecha"
    t.index ["estudiante_id"], name: "index_anotaciones_on_estudiante_id"
  end

  create_table "docentes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.string "direccion"
    t.string "correo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "anotaciones", "estudiantes"
end
