class CreateTvs < ActiveRecord::Migration
  def self.up
    create_table :tvs do |t|
      t.string :titulo,       :limit=>50
      t.string :texto,        :limit=>250, :null=>false
      t.string :img,          :limit=>50,  :null=>false
      t.string :url,          :limit=>50
      t.string :target,       :limit=>8
      t.integer :empresa_id,               :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :tvs
  end
end
