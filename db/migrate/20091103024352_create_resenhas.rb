class CreateResenhas < ActiveRecord::Migration
  def self.up
    create_table :resenhas do |t|
      t.text :texto,         :null=>false
      t.integer :empresa_id, :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :resenhas
  end
end
