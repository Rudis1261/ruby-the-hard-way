class ParserError < Exception
end

class Parser
  def peek(word_list)
    if word_list
      return word_list.first.first
    else
      return nil
    end
  end

  def match(word_list, expecting)
    if word_list
      word = word_list.shift

      if word.first == expecting
        return word
      else
        return nil
      end
    else
      return nil
    end
  end

  def skip(word_list, word_type)
    while peek(word_list) == word_type
      match(word_list, word_type)
    end
  end

  def parse_verb(word_list)
    skip(word_list, 'stop')
    skip(word_list, 'error')

    if peek(word_list == 'verb')
      return match(word_list, 'verb')
    else
      raise ParserError.new("Expected a verb next.")
    end
  end

  def parse_object(word_list)
    skip(word_list, 'stop')
    skip(word_list, 'error')

    next_word = peek(word_list)

    if next_word == 'noun'
      return match(word_list, 'noun')
    elsif next_word == 'direction'
      return match(word_list, 'direction')
    else
      raise ParserError.new("Expected a noun of direction next.")
    end
  end

  def parse_subject(word_list)
    skip(word_list, 'stop')
    skip(word_list, 'error')

    next_word = peek(word_list)

    if next_word == 'noun'
      return match(word_list, 'noun')
    elsif next_word == 'verb'
      return ['noun', 'player']
    else
      raise ParserError.new("Expected a verb next.")
    end
  end

  def parse_sentence(word_list)
    subject = parse_subject(word_list)
    verb = parse_verb(word_list)
    object = parse_object(word_list)

    return Sentence.new(subject, verb, object)
  end
end