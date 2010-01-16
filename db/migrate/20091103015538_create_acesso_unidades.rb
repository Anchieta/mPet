class CreateAcessoUnidades < ActiveRecord::Migration
  def self.up
    create_table :acesso_unidades do |t|
      t.integer :unidade_id, :null=>false
      t.integer :acesso_id,  :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :acesso_unidades
  end
end
