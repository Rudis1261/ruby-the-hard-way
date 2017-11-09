class Lexicon
  @directions = ['north', 'east', 'south', 'west']
  @verbs = ['go', 'stop', 'kill', 'eat']
  @nouns = ['door', 'bear', 'princess', 'cabinet']
  @stopwords = ['the', 'in', 'of', 'from', 'at', 'it']

  attr_accessor :directions, :verbs, :nouns, :stopwords

  def self.scan(input)
    matches = []
    input.split(' ').each do |part|
      next if @stopwords.include?(part.downcase)

      number = self.convert_number(part.downcase)

      case true
        # direction matching
        when @directions.include?(part.downcase)
          matches << ['direction', part.downcase]
        # verb matching
        when @verbs.include?(part.downcase)
          matches << ['verb', part.downcase]
        # noun matching
        when @nouns.include?(part.downcase)
          matches << ['noun', part.downcase]
        # number matching
        when number != nil
          matches << ['number', number]
        else
          matches << ['error', part]
      end
    end

    return matches
  end

  def self.convert_number(object)
    begin
      return Integer(object)
    rescue
      return nil
    end
  end
end