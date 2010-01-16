class CreateUnidades < ActiveRecord::Migration
  def self.up
    create_table :unidades do |t|
      t.string  :nome,            :limit=>25
      t.string  :logradouro,      :limit=>80
      t.string  :compl,           :limit=>50
      t.string  :cep,             :limit=>8
      t.string  :tel,             :limit=>30
      t.string  :email,           :limit=>60
      t.string  :horaAtendimento, :limit=>255
      t.text    :obs
      t.string  :visivel,         :limit=>1,      :null=>false
      t.decimal :latitude,        :precision=>12, :scale=>8
      t.decimal :longitude,       :precision=>12, :scale=>8
      t.integer :empresa_id,      :null=>false
      t.integer :tpLogradouro_id, :null=>false
      t.integer :macro_id,        :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :unidades
  end
end
