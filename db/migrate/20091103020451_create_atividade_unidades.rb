class CreateAtividadeUnidades < ActiveRecord::Migration
  def self.up
    create_table :atividade_unidades do |t|
      t.integer :unidade_id,   :null=>false
      t.integer :atividade_id, :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :atividade_unidades
  end
end
