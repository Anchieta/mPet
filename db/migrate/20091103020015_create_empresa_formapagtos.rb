class CreateEmpresaFormapagtos < ActiveRecord::Migration
  def self.up
    create_table :empresa_formapagtos do |t|
      t.integer :empresa_id,    :null=>false
      t.integer :formapagto_id, :null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :empresa_formapagtos
  end
end
