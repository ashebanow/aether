class CharacterModels < ActiveRecord::Migration
  def self.up
    create_table "char_class_skills", :force => true do |t|
      t.column "char_class_id", :integer, :limit => 10, :default => 0, :null => false
      t.column "skill_id",      :integer, :limit => 10, :default => 0, :null => false
    end

    add_index "char_class_skills", ["skill_id"], :name => "ix_ccs_skill"

    create_table "char_classes", :force => true do |t|
      t.column "name",    :string, :limit => 63, :default => "", :null => false
      t.column "hit_die", :string, :limit => 31
    end

    add_index "char_classes", ["name"], :name => "ix_char_classes_name", :unique => true

    create_table "character_char_classes", :force => true do |t|
      t.column "character_id",  :integer, :limit => 10, :default => 0, :null => false
      t.column "char_class_id", :integer, :limit => 10, :default => 0, :null => false
      t.column "level",         :integer, :limit => 10, :default => 1, :null => false
    end

    add_index "character_char_classes", ["char_class_id"], :name => "ix_cc_char_class_id"

    create_table "character_feats", :force => true do |t|
      t.column "feat_id",      :integer,  :limit => 10, :default => 0, :null => false
      t.column "character_id", :integer,  :limit => 10, :default => 0, :null => false
      t.column "ranks",        :integer,  :limit => 10, :default => 0, :null => false
      t.timestamps
    end

    add_index "character_feats", ["feat_id"], :name => "ix_cf_feat"

    create_table "character_items", :force => true do |t|
      t.column "item_id",      :integer, :limit => 10, :default => 0, :null => false
      t.column "character_id", :integer, :limit => 10, :default => 0, :null => false
    end

    add_index "character_items", ["item_id"], :name => "ix_ci_item"

    create_table "character_props", :force => true do |t|
      t.column "character_id", :integer, :limit => 10, :default => 0, :null => false
      t.column "prop_id",      :integer, :limit => 10, :default => 0, :null => false
      t.column "int_value",    :integer
      t.column "string_value", :string
      t.column "float_value",  :float
    end

    add_index "character_props", ["prop_id"], :name => "ix_character_props_prop"

    create_table "character_skills", :force => true do |t|
      t.column "skill_id",     :integer,  :limit => 10, :default => 0, :null => false
      t.column "character_id", :integer,  :limit => 10, :default => 0, :null => false
      t.column "ranks",        :integer,  :limit => 10, :default => 0, :null => false
      t.column "misc_bonus",   :integer,                :default => 0
      t.timestamps
    end

    add_index "character_skills", ["skill_id"], :name => "ix_cs_skill"

    create_table "characters", :force => true do |t|
      t.column "user_id",         :integer,  :limit => 10
      t.column "name",            :string,                 :default => "", :null => false
      t.column "race_id",         :integer,  :limit => 10
      t.column "melee_weapon_id", :integer,  :limit => 10
      t.column "range_weapon_id", :integer,  :limit => 10
      t.column "hair_color",      :string
      t.column "eye_color",       :string
      t.column "skin_color",      :string
      t.column "gender",          :string
      t.column "age",             :integer
      t.column "height",          :integer
      t.column "weight",          :integer
      t.column "homeland",        :string
      t.timestamps
    end

    add_index "characters", ["user_id"], :name => "ix_character_user_id"
    add_index "characters", ["race_id"], :name => "ix_character_race"
    add_index "characters", ["melee_weapon_id"], :name => "ix_character_melee_weapon"
    add_index "characters", ["range_weapon_id"], :name => "ix_character_range_weapon"
    add_index "characters", ["name"], :name => "ix_character_name"

    create_table "combat_rite_props", :force => true do |t|
      t.column "combat_rite_id", :integer, :limit => 10, :default => 0, :null => false
      t.column "prop_id",        :integer, :limit => 10, :default => 0, :null => false
      t.column "int_value",      :integer
      t.column "string_value",   :string
      t.column "float_value",    :float
    end

    add_index "combat_rite_props", ["prop_id"], :name => "ix_combat_rite_prop"

    create_table "combat_rites", :force => true do |t|
      t.column "name",     :string,  :limit => 63
      t.column "level",    :integer, :limit => 10, :default => 1
      t.column "benefits", :text
    end

    add_index "combat_rites", ["name"], :name => "ix_combat_rites_name", :unique => true

    create_table "feats", :force => true do |t|
      t.column "name",          :string, :limit => 63
      t.column "type",          :string, :limit => 31, :default => "General", :null => false
      t.column "prerequisites", :text
      t.column "benefits",      :text
    end

    add_index "feats", ["name"], :name => "ix_feat_name", :unique => true
    add_index "feats", ["type"], :name => "ix_feat_type"

    create_table "item_props", :force => true do |t|
      t.column "prop_id",      :integer, :limit => 10, :default => 0, :null => false
      t.column "item_id",      :integer, :limit => 10, :default => 0, :null => false
      t.column "int_value",    :integer
      t.column "string_value", :string
      t.column "float_value",  :float
    end

    add_index "item_props", ["prop_id"], :name => "ix_item_props_propid"

    create_table "items", :force => true do |t|
      t.column "name",          :string
      t.column "type",          :string,   :limit => 50
      t.column "prerequisites", :text
      t.column "benefits",      :text
      t.timestamps
    end

    create_table "props", :force => true do |t|
      t.column "name",         :string, :limit => 63, :default => "", :null => false
      t.column "abbreviation", :string, :limit => 15, :default => "", :null => false
      t.column "prop_type",    :string
    end

    add_index "props", ["name"], :name => "ix_props_name", :unique => true
    add_index "props", ["abbreviation"], :name => "ix_props_abbreviation", :unique => true

    create_table "races", :force => true do |t|
      t.column "name", :string, :limit => 127, :default => "", :null => false
    end

    add_index "races", ["name"], :name => "ix_races_name", :unique => true

    create_table "skill_props", :force => true do |t|
      t.column "skill_id",     :integer, :limit => 10, :default => 0, :null => false
      t.column "prop_id",      :integer, :limit => 10, :default => 0, :null => false
      t.column "int_value",    :integer
      t.column "string_value", :string
      t.column "float_value",  :float
    end

    add_index "skill_props", ["prop_id"], :name => "ix_skill_prop"

    create_table "skills", :force => true do |t|
      t.column "name",           :string,  :limit => 63, :default => "", :null => false
      t.column "prop_id",        :integer, :limit => 10
      t.column "needs_training", :integer, :limit => 5,  :default => 0
      t.column "benefits",       :text
    end

    add_index "skills", ["name"], :name => "ix_skills_name", :unique => true
    add_index "skills", ["prop_id"], :name => "ix_skills_prop"
  end

  def self.down
    drop_table :character_char_classes
    drop_table :character_feats
    drop_table :character_items
    drop_table :character_skills
    drop_table :character_props
    drop_table :characters

    drop_table :combat_rite_props
    drop_table :item_props
    drop_table :skill_props
    drop_table :props

    drop_table :char_class_skills
    drop_table :char_classes
    drop_table :combat_rites
    drop_table :feats
    drop_table :items
    drop_table :races
    drop_table :skills
  end
end
