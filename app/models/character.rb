class Character < ActiveRecord::Base
  belongs_to :user
  # each character is a member of a race
  belongs_to :race

  has_many :levels, :dependent => :destroy
  has_many :char_classes, :through => :levels, :order => :position
  has_and_belongs_to_many :feats
  has_and_belongs_to_many :items
  has_and_belongs_to_many :props
  has_and_belongs_to_many :skills
  
  def attribute_bonus(val)
    ((val - 10) / 2).floor
  end
  
  def total_hit_points()
    levels.find(:all).sum {|level| level.hit_points_added }
  end

  def initiative_bonus
    # TODO: implement
    0
  end
  
  def prop_name(abbrev)
    # TODO: implement me again!
  end

  def prop_value(abbrev)
    # TODO: implement me again!
  end

  def prop_modifier(abbrev)
    # TODO: implement me again!
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

  end

end
