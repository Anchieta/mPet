# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091113020858) do

  create_table "acesso_unidades", :force => true do |t|
    t.integer  "unidade_id", :null => false
    t.integer  "acesso_id",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "acessos", :force => true do |t|
    t.string   "nome",       :limit => 100, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "atividade_unidades", :force => true do |t|
    t.integer  "unidade_id",   :null => false
    t.integer  "atividade_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "atividades", :force => true do |t|
    t.string   "nome",       :limit => 60, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bairro_micros", :force => true do |t|
    t.integer  "bairro_id",  :null => false
    t.integer  "micro_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bairros", :force => true do |t|
    t.string   "nome",       :null => false
    t.string   "nomeseo",    :null => false
    t.integer  "cidade_id",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias", :force => true do |t|
    t.string   "nome",       :limit => 60, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cidades", :force => true do |t|
    t.string   "nome",       :limit => 25, :null => false
    t.string   "uf",         :limit => 2,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contatos", :force => true do |t|
    t.string   "nome",       :limit => 30, :null => false
    t.string   "cargo",      :limit => 20
    t.string   "email",      :limit => 60
    t.string   "celular",    :limit => 10
    t.datetime "dtaniver"
    t.string   "ativo",      :limit => 1,  :null => false
    t.string   "keycod",     :limit => 6,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destaques", :force => true do |t|
    t.string   "texto",      :limit => 50, :null => false
    t.string   "imgp",       :limit => 50
    t.string   "url",        :limit => 50
    t.string   "target",     :limit => 8,  :null => false
    t.integer  "empresa_id",               :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresa_formapagtos", :force => true do |t|
    t.integer  "empresa_id",    :null => false
    t.integer  "formapagto_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", :force => true do |t|
    t.string   "nome",       :limit => 60,  :null => false
    t.string   "fanta",      :limit => 30,  :null => false
    t.string   "cnpj",       :limit => 18
    t.string   "ie",         :limit => 12
    t.string   "logop",      :limit => 50
    t.string   "logog",      :limit => 50
    t.string   "site",       :limit => 80
    t.string   "pchave",     :limit => 200
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formapagtos", :force => true do |t|
    t.string   "nome",       :limit => 20, :null => false
    t.string   "imgp",       :limit => 50, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "macros", :force => true do |t|
    t.string   "nome",       :limit => 25, :null => false
    t.string   "nomeseo",    :limit => 50, :null => false
    t.string   "abrev",      :limit => 15, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "visivel",    :limit => 1
    t.integer  "ordem"
  end

  create_table "micros", :force => true do |t|
    t.string   "nome",       :limit => 25, :null => false
    t.string   "nomeseo",    :limit => 50, :null => false
    t.integer  "ordem",      :limit => 15, :null => false
    t.string   "visivel",    :limit => 1,  :null => false
    t.integer  "macro_id",                 :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resenhas", :force => true do |t|
    t.text     "texto",      :null => false
    t.integer  "empresa_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tplogradouros", :force => true do |t|
    t.string   "nome",       :limit => 25
    t.string   "abrev",      :limit => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tvs", :force => true do |t|
    t.string   "titulo",     :limit => 50
    t.string   "texto",      :limit => 250, :null => false
    t.string   "img",        :limit => 50,  :null => false
    t.string   "url",        :limit => 50
    t.string   "target",     :limit => 8
    t.integer  "empresa_id",                :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidades", :force => true do |t|
    t.string   "nome",            :limit => 25
    t.string   "logradouro",      :limit => 80
    t.string   "compl",           :limit => 50
    t.string   "cep",             :limit => 8
    t.string   "tel",             :limit => 30
    t.string   "email",           :limit => 60
    t.string   "horaAtendimento"
    t.text     "obs"
    t.string   "visivel",         :limit => 1,                                 :null => false
    t.decimal  "latitude",                      :precision => 12, :scale => 8
    t.decimal  "longitude",                     :precision => 12, :scale => 8
    t.integer  "empresa_id",                                                   :null => false
    t.integer  "tpLogradouro_id",                                              :null => false
    t.integer  "macro_id",                                                     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
