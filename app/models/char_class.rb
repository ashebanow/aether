class CharClass < ActiveRecord::Base
  has_many :characters, :through => :levels, :uniq => true
end
