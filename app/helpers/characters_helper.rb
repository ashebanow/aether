module CharactersHelper
  def format_modifier(abbrev)
    # TODO: implement me again!
  end
  
  def char_class_summary(character)
    # turn a character's character class info into an abbreviated form, like
    # "Warmain/7 Unfettered/3"
    summary = ""
    return "(No character classes!)" if character.levels.length == 0
    for level in character.levels
      summary += ' ' if summary.length > 0
      summary += (level.char_class.name + '/' + level.level.to_s)
    end
    summary
  end

end
  