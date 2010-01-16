class CreateTplogradouros < ActiveRecord::Migration
  def self.up
    create_table :tplogradouros do |t|
      t.string :nome,  :limit=>25
      t.string :abrev, :limit=>2

      t.timestamps
    end
  end

  def self.down
    drop_table :tplogradouros
  end
end
