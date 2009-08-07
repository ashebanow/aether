class Feat < ActiveRecord::Base
  has_and_belongs_to_many :characters
end

class GeneralFeat < Feat
end

class ItemCreationFeat < Feat
end

class CeremonialFeat < Feat
end

class TalentFeat < Feat
end
