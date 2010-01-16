class AddVisivelOrdemToMacro < ActiveRecord::Migration
  def self.up
    add_column :macros, :visivel, :string, :limit=>1
    add_column :macros, :ordem,   :integer
  end

  def self.down
    remove_column :macros, :visivel
    remove_column :macros, :ordem
  end
end
