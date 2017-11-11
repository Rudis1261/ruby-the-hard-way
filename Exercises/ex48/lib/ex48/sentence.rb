class Sentence
  def initialize(subject, verb, obj, numbers)
    @subject = subject && subject.size > 0 ? subject.last : nil
    @verb = verb && verb.size > 0 ? verb.last : nil
    @object = obj && obj.size > 0 ? obj.last : nil
    @numbers = numbers && numbers.size > 0 ? numbers.last : nil
  end

  attr_accessor :subject, :verb, :object, :numbers
end