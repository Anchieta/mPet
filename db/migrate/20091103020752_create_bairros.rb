class CreateBairros < ActiveRecord::Migration
  def self.up
    create_table :bairros do |t|
      t.string  :nome,       :limt=>25,  :null=>false
      t.string  :nomeseo,    :limt=>50,  :null=>false
      t.integer :cidade_id,              :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :bairros
  end
end
