class CreateFormapagtos < ActiveRecord::Migration
  def self.up
    create_table :formapagtos do |t|
      t.string :nome, :limit=>20, :null=>false
      t.string :imgp, :limit=>50, :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :formapagtos
  end
end
