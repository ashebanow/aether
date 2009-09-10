class Character < ActiveRecord::Base
  belongs_to :user
  # each character is a member of a race
  belongs_to :race

  has_many :levels, :dependent => :destroy
  has_many :char_classes, :through => :levels, :order => :position
  has_and_belongs_to_many :feats
  has_and_belongs_to_many :items
  has_many :props, :as => :owner
  has_and_belongs_to_many :skills
  
  def attribute_bonus(val)
    ((val - 10) / 2).floor
  end
  
  def max_hit_points()
    levels.find(:all).sum {|level| level.hit_points_added }
  end

  def current_hit_points()
    max_hit_points - prop_value('Dmg') - prop_value('SubDmg') + prop_value('TmpHP')
  end
  
  def disabled_at
    0
  end
  
  def dying_at
    - prop_modifier('CON')
  end
  
  def dead_at
    - prop_value('CON')
  end

  def initiative_modifier
    # TODO: add in other bonuses from feats, etc.
    prop_modifier('DEX')
  end
  
  def prop_name(abbrev)
    prop = props.find_by_abbreviation abbrev
    prop.name
  end

  def prop_value(abbrev)
    prop = props.find_by_abbreviation abbrev
    prop.value
  end

  def prop_modifier(abbrev)
    prop = props.find_by_abbreviation abbrev
    (prop.value - 10) / 2
  end

  def self.create_char
    # first find the existing pieces we need to create the character
    user = User.find :first
    human_race = Race.find_by_name "Human"
    warmain = CharClass.find_by_name "Warmain"
    ritual_warrior = CharClass.find_by_name "Ritual Warrior"

    # setup basic metadata
    ilgar = user.characters.create(:name        => "Ilgar Bladekeeper",
                                   :race        => human_race,
                                   :hair_color  => "Brown",
                                   :eye_color   => "Black",
                                   :skin_color  => "Tan",
                                   :gender      => "Male",
                                   :age         => 43,
                                   :height      => 66,
                                   :weight      => 155,
                                   :homeland    => "Lomitha",
                                   :xp          => 72345)

    # add levels
    8.times { ilgar.levels.create(:char_class => warmain,        :hit_points_added => 10) }
              ilgar.levels.create(:char_class => ritual_warrior, :hit_points_added => 9)
              ilgar.levels.create(:char_class => ritual_warrior, :hit_points_added => 10)
    2.times { ilgar.levels.create(:char_class => warmain,        :hit_points_added => 10) }

    ilgar.save!
    
    # add attributes
    ilgar.props << IntProp.new(:int_value => 20,  :name => 'Strength',      :abbreviation => 'STR')
    ilgar.props << IntProp.new(:int_value => 15,  :name => 'Dexterity',     :abbreviation => 'DEX')
    ilgar.props << IntProp.new(:int_value => 17,  :name => 'Constitution',  :abbreviation => 'CON')
    ilgar.props << IntProp.new(:int_value => 8,   :name => 'Intelligence',  :abbreviation => 'INT')
    ilgar.props << IntProp.new(:int_value => 14,  :name => 'Wisdom',        :abbreviation => 'WIS')
    ilgar.props << IntProp.new(:int_value => 8,   :name => 'Charisma',      :abbreviation => 'CHA')

    ilgar.props << IntProp.new(:int_value => 0,   :name => 'Ability Points Remaining',  :abbreviation => 'AbilPtsRem')
    ilgar.props << IntProp.new(:int_value => 24,  :name => 'Ability Points Max',        :abbreviation => 'AbilPtsMax')

    ilgar.props << IntProp.new(:int_value => 15,  :name => 'Damage',                :abbreviation => 'Dmg')
    ilgar.props << IntProp.new(:int_value => 10,  :name => 'Subdual Damage',        :abbreviation => 'SubDmg')
    ilgar.props << IntProp.new(:int_value => 0,   :name => 'Temporary HP',          :abbreviation => 'TmpHP')
    ilgar.props << IntProp.new(:int_value => 0,   :name => 'Disabled At Modifier',  :abbreviation => 'DisAtMod')
    ilgar.props << IntProp.new(:int_value => 0,   :name => 'Dying At Modifier',     :abbreviation => 'DyingAtMod')
    ilgar.props << IntProp.new(:int_value => 0,   :name => 'Dead At Modifier',      :abbreviation => 'DeadAtMod')

    ilgar.save!

  end

end
