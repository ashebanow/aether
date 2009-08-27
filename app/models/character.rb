class Character < ActiveRecord::Base
  belongs_to :user
  # each character is a member of a race
  belongs_to :race

  has_many :char_classes, :through => :levels, :uniq => true
  has_many :levels
  has_and_belongs_to_many :feats
  has_and_belongs_to_many :items
  has_and_belongs_to_many :props
  has_and_belongs_to_many :skills
  
  def attribute_bonus(val)
    ((val - 10) / 2).floor
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

end
