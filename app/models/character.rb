class Character < ActiveRecord::Base
  belongs_to :user

  has_and_belongs_to_many :char_classes
  has_and_belongs_to_many :feats
  has_and_belongs_to_many :items
  has_and_belongs_to_many :props
  has_and_belongs_to_many :skills
  
  # each character is a member of a race, but we don't model the other direction
  belongs_to :race
  
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
