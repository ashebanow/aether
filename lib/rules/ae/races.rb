# sample game ruleset definition DSL

class AERace < D20Race
end

race :human, :ae_race do
  language :common
  
  size :medium
  
  speed_base 30 # feet
  
  # one extra skill per level. 1st level gets multiplied by 4 automatically
  # via the skills method in ae_character_class
  skills_bonus { | character, class_level, character_level | 1 }
  
  class_skills = [ :knowledge_humans ]
  
  # humans get 1 extra non-talent feat at level 1
  racial_abilities = [
    [ 1, :choose_feat, :nontalent ],
    [ 1, :choose_language]
  ]

  ##
  # these properties apply only when leveling in racial levels
  ##

  hit_die { roll "1d8" }
  skills_base 2
  
  # bab goes up by one every level, starts at 1
  bab :all, 1, 0
  
  # saves start at zero, go up to 1 at level 2
  will [2], 0, 1
  fortitude [2], 0, 1
  reflex [2], 0, 1

  racial_levels = [
    # [evolved?, [ [special ability, args...], ...]  ]
    [ true, [ [:choose_ability_score], [:choose_feat, :nontalent], [:choose_class_skills, 6] ] ],
    [ true, [ [:choose_ability_score], [:choose_feat, :nontalent], [:choose_class_skills, 6] ] ],
    [ true, [ [:choose_ability_score], [:choose_feat, :nontalent], [:choose_class_skills, 6] ] ]
  ]
end
