class CreateAcessos < ActiveRecord::Migration
  def self.up
    create_table :acessos do |t|
      t.string :nome, :limit=>100, :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :acessos
  end
end
