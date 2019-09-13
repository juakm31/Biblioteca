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

ActiveRecord::Schema.define(version: 2019_09_13_113028) do

  create_table "autors", force: :cascade do |t|
    t.integer "cod_autor"
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.integer "cod_cliente"
    t.string "nombre"
    t.string "correo"
    t.integer "telefono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "libros", force: :cascade do |t|
    t.integer "cod_libro"
    t.string "nombre"
    t.integer "autor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["autor_id"], name: "index_libros_on_autor_id"
  end

  create_table "prestamos", force: :cascade do |t|
    t.integer "cliente_id", null: false
    t.integer "libro_id", null: false
    t.date "fecha_prestamo"
    t.date "fecha_devolucion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_prestamos_on_cliente_id"
    t.index ["libro_id"], name: "index_prestamos_on_libro_id"
  end

  add_foreign_key "libros", "autors"
  add_foreign_key "prestamos", "clientes"
  add_foreign_key "prestamos", "libros"
end
