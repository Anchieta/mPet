class CreateContatos < ActiveRecord::Migration
  def self.up
    create_table :contatos do |t|
      t.string   :nome,        :limit=>30,        :null=>false
      t.string   :cargo,       :limit=>20
      t.string   :email,       :limit=>60
      t.string   :celular,     :limit=>10
      t.datetime :dtaniver
      t.string   :ativo,       :limit=>1,         :null=>false
      t.string   :keycod,      :limit=>6,         :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :contatos
  end
end
