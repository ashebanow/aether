class Level < ActiveRecord::Base
  belongs_to :character
  belongs_to :char_class
end
