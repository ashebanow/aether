module CharactersHelper
  def format_modifier(abbrev)
    # TODO: implement me again!
  end
  
  def char_class_summary(character)
    # turn a character's character class info into an abbreviated form, like
    # "Warmain/7 Unfettered/3"
    summary = ""
    return "(No character classes!)" if character.char_classes.size == 0
    for char_class in character.char_classes
      summary += ' ' if summary.length > 0
      # FIXME: the Character model doesn't handle the join table right so we can't
      # get the level
      summary += char_class.name + '/' + '?'
    end
  end

end
