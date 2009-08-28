class Level < ActiveRecord::Base
  belongs_to :character
  acts_as_list :scope => :character
  belongs_to :char_class
end
