class LevelsAsList < ActiveRecord::Migration
  def self.up
    remove_column :levels, :level
    add_column :levels, :position, :integer
    add_timestamps :levels
    add_column :levels, :hit_points_added, :integer, :default => 0 
    add_index :levels, :position
  end

  def self.down
    remove_timestamps :levels
    remove_index :levels, :position
    remove_column :hit_points_added, :position
    remove_column :levels, :position
    add_column :levels, :level, :integer
  end
end
