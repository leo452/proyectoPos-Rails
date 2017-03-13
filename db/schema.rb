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

ActiveRecord::Schema.define(version: 20170313044316) do

  create_table "categories", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "clients", force: :cascade do |t|
    t.integer  "documento"
    t.string   "tipo_documento"
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "telefono"
    t.string   "direccion"
    t.string   "pais"
    t.string   "ciudad"
    t.string   "email"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "periodicidad"
    t.date     "fecha_afiliacion"
    t.date     "fecha_final_afiliacion"
    t.date     "fecha_corte_afiliacion"
    t.integer  "membership_id"
    t.integer  "user_id"
  end

  add_index "clients", ["membership_id"], name: "index_clients_on_membership_id"

  create_table "detail_purchase_receipts", force: :cascade do |t|
    t.integer  "purchase_receipt_id"
    t.integer  "product_id"
    t.integer  "cantidad"
    t.decimal  "valor_total"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "detail_purchase_receipts", ["product_id"], name: "index_detail_purchase_receipts_on_product_id"
  add_index "detail_purchase_receipts", ["purchase_receipt_id"], name: "index_detail_purchase_receipts_on_purchase_receipt_id"

  create_table "details", force: :cascade do |t|
    t.integer  "receipt_id"
    t.integer  "product_id"
    t.integer  "cantidad_producto"
    t.decimal  "precio"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "details", ["product_id"], name: "index_details_on_product_id"
  add_index "details", ["receipt_id"], name: "index_details_on_receipt_id"

  create_table "discounts", force: :cascade do |t|
    t.integer  "categories_id"
    t.integer  "discount_porcentaje"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.integer  "society_id"
    t.integer  "category_id"
  end

  add_index "discounts", ["categories_id"], name: "index_discounts_on_categories_id"

  create_table "forma_de_pagos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "society_id"
    t.string   "periodicidad"
    t.date     "fecha_afiliacion"
    t.date     "fecha_vencimiento"
    t.date     "fecha_cuota"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.boolean  "estado"
    t.integer  "user_id"
    t.float    "pago_acomulado"
  end

  add_index "memberships", ["society_id"], name: "index_memberships_on_society_id"

  create_table "outflows", force: :cascade do |t|
    t.date     "feha"
    t.string   "concepto"
    t.integer  "nit"
    t.string   "entidad"
    t.integer  "numero_factura"
    t.decimal  "valor"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "nombre"
    t.integer  "cantidad"
    t.decimal  "valor_unitario"
    t.decimal  "valorC_total"
    t.boolean  "articulo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "descripcion"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id"

  create_table "providers", force: :cascade do |t|
    t.integer  "nit"
    t.string   "nombre"
    t.string   "departamento"
    t.string   "ciudad"
    t.integer  "telefono"
    t.string   "direccion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "purchase_receipts", force: :cascade do |t|
    t.integer  "provider_id"
    t.date     "fecha"
    t.integer  "numero_factura"
    t.decimal  "valor_total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "purchase_receipts", ["provider_id"], name: "index_purchase_receipts_on_provider_id"

  create_table "receipts", force: :cascade do |t|
    t.date     "fecha"
    t.float    "valor_total"
    t.integer  "clients_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "soporte_file_name"
    t.string   "soporte_content_type"
    t.integer  "soporte_file_size"
    t.datetime "soporte_updated_at"
    t.integer  "forma_de_pago_id"
    t.integer  "user_id"
    t.integer  "membership_id"
  end

  add_index "receipts", ["clients_id"], name: "index_receipts_on_clients_id"
  add_index "receipts", ["forma_de_pago_id"], name: "index_receipts_on_forma_de_pago_id"
  add_index "receipts", ["membership_id"], name: "index_receipts_on_membership_id"

  create_table "societies", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.float    "val_anual"
    t.float    "val_semestral"
    t.float    "val_mensual"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
    t.string   "password_digest"
  end

end
