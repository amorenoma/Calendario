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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130621181944) do

  create_table "comentarios", :force => true do |t|
    t.string   "comentario"
    t.string   "evento"
    t.string   "usuario"
    t.datetime "fecha"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "eventos", :force => true do |t|
    t.datetime "fecha"
    t.string   "asignatura"
    t.string   "tipo"
    t.string   "aula"
    t.string   "dificultad"
    t.string   "comentario"
    t.string   "profesor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meses", :force => true do |t|
    t.string   "mes"
    t.integer  "dias"
    t.string   "nmes"
    t.string   "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "rol"
    t.string   "key"
    t.string   "nick"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
