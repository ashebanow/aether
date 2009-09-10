module CharactersHelper
  def as_bonus(value)
    if value > 0
      "+" + value.to_s
    else
      value.to_s
    end
  end
  
  def char_class_summary(character)
    # turn a character's character class info into an abbreviated form, like
    # "Warmain/7 Unfettered/3"
    summary = ""
    return "(No character classes!)" if character.levels.length == 0
    levels = character.levels.group_by(&:char_class)
    levels.each do |char_class, level_array|
      summary += ', ' if summary.length > 0
      summary += (char_class.name + '/' + level_array.length.to_s)
    end
    summary
  end
  
end
  