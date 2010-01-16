class CreateMacros < ActiveRecord::Migration
  def self.up
    create_table :macros do |t|
      t.string  :nome,       :limit=>25,    :null=>false
      t.string  :nomeseo,    :limit=>50,    :null=>false
      t.string  :abrev,      :limit=>15,    :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :macros
  end
end
