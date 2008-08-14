class AECharacterClass < D20CharacterClass
  skills do
    | character, class_level, character_level |
    count = character.INT.mod + skills_base
    count += character.race.skills_bonus
    count *= 4 if character_level == 1
    result
  end
end

# declare warmain, based on our ae_char_class template defined above
char_class :warmain, :ae_character_class do
  # whenever a character goes up a level, we call these functions to determine
  hit_die { roll "1d12" }

  # this just says how many skills we get per level, without bonuses for INT, race, or level 1
  # you could also just redefine skills method to use your block instead
  skills_base 2

  # The following properties allow progressions to be defined in a flexible way.
  #
  # the first argument defines the number of levels to skip. Special cases provided for all (skip 0),
  # even, odd, by threes. If provided with an array, then the array defines the levels to increment on.
  #
  # second argument is value for level 1
  #
  # third argument is increment for following levels that match the skip pattern
  #
  # The property could also take a block to define a closure as shown above instead of supplying
  # arguments, in which case the block is passed the character, class_level, and overall character_level

  # bab goes up by one every level, starts at 1
  bab :all, 1, 1

  # will save goes up on levels [2, 4, 6, 9, 11, 13, 16, 18, 20, 22, 24], starts at zero
  will [2, 4, 6, 9, 11, 13, 16, 18, 20, 22, 24], 0, 1

  # reflex save goes up by one every third level, starts at zero
  reflex :by_threes, 0, 1

  # fortitude save goes up by one on even levels only, starts at 2
  fortitude :even, 2, 1
  
  # combat rites don't come in until late for a warmain
  combat_rites_l1 [13, 15, 17, 21, 25], 1, 1
  combat_rites_l2 [19, 21, 23], 1, 1
  combat_rites_l3 [22..25], 1, 1
  
  # special abilities
  special_abilities = [
    # level, name, [optional params...]
    [ 1, :sturdy ],
    [ 2, :choose_class_bonus_feat],
    [ 4, :weapon_specialization_feat],
    [ 6, :choose_class_bonus_feat],
    [ 8, :crushing_blow],
    [10, :choose_class_bonus_feat],
    [12, :armor_specialization],
    [14, :choose_class_bonus_feat],
    [15, :crushing_blow],
    [16, :weapon_size_increase],
    [18, :choose_class_bonus_feat],
    [20, :choose_class_bonus_feat],
    [20, :weapon_mastery],
    [22, :choose_class_bonus_feat],
    [23, :choose_class_bonus_feat],
    [25, :choose_class_bonus_feat]
  ]
  
  class_skills = [
    # [skill_name, args...]]
    [ :climb ],
    [ :craft ],
    [ :handle_animal ],
    [ :intimidate ],
    [ :jump ],
    [ :knowledge_architecture ],
    [ :knowledge_engineering ],
    [ :knowledge_history ],
    [ :knowledge_nobility_and_courtesy ],
    [ :ride ],
    [ :swim ]
  ]

  bonus_feats = [
    # [feat_name, allow_multiple? [, args...]]
    [ :bloody_strike, false ],
    [ :cleave, false ],
    [ :combat_reflexes, false ],
    [ :exotic_armor_proficiency, false ],
    [ :exotic_weapon_proficiency, true ],
    [ :flail_defense, false ],
    [ :great_fortitude, false ],
    [ :improved_bull_rush, false ],
    [ :improved_critical, true ],
    [ :massive_two_weapon_fighting, false ],
    [ :mighty_unarmed_strike, false ],
    [ :mounted_combat, false ],
    [ :power_attack, false ],
    [ :power_charge, false ],
    [ :ride_by_attack, false ],
    [ :ritual_combat, false ],
    [ :shield_specialization, false ],
    [ :stomp, false ],
    [ :stunning_blow, false ],
    [ :sturdy, false ],
    [ :sunder, false ],
    [ :tough_hide, false ],
    [ :trample, false ],
    [ :two_weapon_fighting, false ],
    [ :weapon_focus, true ],
    [ :weapon_specialization, true ]
  ]
end
