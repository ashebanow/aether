class RenameCharacterCharClassesTable < ActiveRecord::Migration
  def self.up
     rename_table :character_char_classes, :char_classes_characters 
  end

  def self.down
     rename_table :char_classes_characters, :character_char_classes 
  end
end
