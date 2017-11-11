class ParserError < Exception
end

class Parser
  def self.peek(word_list)
    if word_list
      return word_list.first.first
    else
      return nil
    end
  end

  def self.match(word_list, expecting)
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

  def self.skip(word_list, word_type)
    while peek(word_list) == word_type
      match(word_list, word_type)
    end
  end

  def self.verb(word_list)
    skip(word_list, 'stop')
    skip(word_list, 'error')

    if peek(word_list) == 'verb'
      return match(word_list, 'verb')
    else
      raise ParserError.new('Expected a verb next.')
    end
  end

  def self.object(word_list)
    skip(word_list, 'stop')
    skip(word_list, 'error')

    next_word = peek(word_list)

    if next_word == 'noun'
      return match(word_list, 'noun')
    elsif next_word == 'direction'
      return match(word_list, 'direction')
    else
      raise ParserError.new('Expected a noun of direction next.')
    end
  end

  def self.subject(word_list)
    skip(word_list, 'stop')
    skip(word_list, 'error')

    next_word = peek(word_list)

    if next_word == 'noun'
      return match(word_list, 'noun')
    elsif next_word == 'verb'
      return ['noun', 'player']
    else
      raise ParserError.new('Expected a verb next.')
    end
  end

  def self.numbers(word_list)
    skip(word_list, 'stop')
    skip(word_list, 'error')

    next_word = peek(word_list)

    if next_word == 'number'
      return match(word_list, 'number')
    end
    return nil
  end

  def self.sentence(word_list)
    subject = subject(word_list) rescue nil
    verb = verb(word_list) rescue nil
    object = object(word_list) rescue nil
    numbers = numbers(word_list) rescue nil

    return Sentence.new(subject, verb, object, numbers)
  end
end