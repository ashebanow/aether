class ConvertCharClassJoinToModel < ActiveRecord::Migration
  def self.up
    add_column :char_classes_characters, :id, :primary_key
    rename_table :char_classes_characters, :levels 
  end

  def self.down
    rename_table :levels, :char_classes_characters 
    remove_column :char_classes_characters, :id
  end
end
