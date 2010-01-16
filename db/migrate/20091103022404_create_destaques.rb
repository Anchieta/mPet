class CreateDestaques < ActiveRecord::Migration
  def self.up
    create_table :destaques do |t|
      t.string :texto,        :limit=>50, :null=>false
      t.string :imgp,         :limit=>50
      t.string :url,          :limit=>50
      t.string :target,       :limit=>8,  :null=>false
      t.integer :empresa_id,              :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :destaques
  end
end
