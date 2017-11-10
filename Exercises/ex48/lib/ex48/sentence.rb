class Sentence
  def initialize(subject, verb, obj)
    @subject = subject.last
    @verb = verb.last
    @object = obj.last
  end

  attr_accessor :subject, :verb, :object
end