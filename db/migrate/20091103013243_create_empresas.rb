class CreateEmpresas < ActiveRecord::Migration
  def self.up
    create_table :empresas do |t|
      t.string :nome,   :limit=>60, :null=>false
      t.string :fanta,  :limit=>30, :null=>false
      t.string :cnpj,   :limit=>18
      t.string :ie,     :limit=>12
      t.string :logop,  :limit=>50
      t.string :logog,  :limit=>50
      t.string :site,   :limit=>80
      t.string :pchave, :limit=>200

      t.timestamps
    end
  end

  def self.down
    drop_table :empresas
  end
end
