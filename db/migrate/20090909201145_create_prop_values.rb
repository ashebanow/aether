class Prop < ActiveRecord::Base; end

class CreatePropValues < ActiveRecord::Migration
  def self.up
    # first get rid of unneeded and unused tables
    remove_index :character_props, :name => :ix_character_props_prop
    remove_index :character_props, :name => :ix_combat_rite_prop
    remove_index :character_props, :name => :ix_item_props_propid
    remove_index :character_props, :name => :ix_skill_prop
    drop_table :character_props
    drop_table :combat_rite_props
    drop_table :item_props
    drop_table :skill_props
    
    # get rid of old props, since they weren't associated with any particular character
    Prop.delete_all
    
    add_column :props, :int_value, :integer, :default => 0
    add_column :props, :string_value, :string
    add_column :props, :float_value, :float, :default => 0.0
    rename_column :props, :prop_type, :type

    add_column :props, :owner_id, :integer
    add_column :props, :owner_type, :string

    add_index :props, ["owner_type", "owner_id", "abbreviation"]
    add_index :props, ["owner_type", "owner_id", "name"]
  end

  def self.down
    rename_column :props, :type, :prop_type
    remove_column :props, :owner_type
    remove_column :props, :owner_id
    remove_column :props, :float_value
    remove_column :props, :string_value
    remove_column :props, :int_value

    create_table :character_props, :force => true do |t|
      t.integer "character_id", :limit => 10, :default => 0, :null => false
      t.integer "prop_id",      :limit => 10, :default => 0, :null => false
      t.integer "int_value"
      t.string  "string_value"
      t.float   "float_value"
    end

    add_index :character_props, ["prop_id"], :name => "ix_character_props_prop"

    create_table "combat_rite_props", :force => true do |t|
      t.integer "combat_rite_id", :limit => 10, :default => 0, :null => false
      t.integer "prop_id",        :limit => 10, :default => 0, :null => false
      t.integer "int_value"
      t.string  "string_value"
      t.float   "float_value"
    end

    add_index "combat_rite_props", ["prop_id"], :name => "ix_combat_rite_prop"

    create_table "item_props", :force => true do |t|
      t.integer "prop_id",      :limit => 10, :default => 0, :null => false
      t.integer "item_id",      :limit => 10, :default => 0, :null => false
      t.integer "int_value"
      t.string  "string_value"
      t.float   "float_value"
    end

    add_index "item_props", ["prop_id"], :name => "ix_item_props_propid"

    create_table "skill_props", :force => true do |t|
      t.integer "skill_id",     :limit => 10, :default => 0, :null => false
      t.integer "prop_id",      :limit => 10, :default => 0, :null => false
      t.integer "int_value"
      t.string  "string_value"
      t.float   "float_value"
    end

    add_index "skill_props", ["prop_id"], :name => "ix_skill_prop"
  end
end
