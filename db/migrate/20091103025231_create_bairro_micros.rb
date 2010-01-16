class CreateBairroMicros < ActiveRecord::Migration
  def self.up
    create_table :bairro_micros do |t|
      t.integer :bairro_id,  :null=>false
      t.integer :micro_id,   :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :bairro_micros
  end
end
