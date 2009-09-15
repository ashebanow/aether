class ConvertCharClassJoinToModel < ActiveRecord::Migration
  def self.up
    rename_table :char_classes_characters, :levels 
  end

  def self.down
    rename_table :levels, :char_classes_characters 
  end
end
