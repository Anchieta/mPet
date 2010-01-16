class CreateMicros < ActiveRecord::Migration
  def self.up
    create_table :micros do |t|
      t.string  :nome,       :limit=>25,    :null=>false
      t.string  :nomeseo,    :limit=>50,    :null=>false
      t.integer :ordem,      :limit=>15,    :null=>false
      t.string  :visivel,    :limit=>1,     :null=>false
      t.integer :macro_id,                  :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :micros
  end
end
