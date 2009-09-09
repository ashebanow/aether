class AddXpToChar < ActiveRecord::Migration
  def self.up
    add_column :characters, :xp, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :characters, :xp
  end
end
