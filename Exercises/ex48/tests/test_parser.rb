require './lib/ex48/parser.rb'
require './lib/ex48/lexicon.rb'
require 'test/unit'

class TextParse < Test::Unit::TestCase
  def test_parser_exceptions()
    exception = assert_raise(ParserError) { Parser.object([['verb', 'Run']]) }
    assert_equal('Expected a noun of direction next.', exception.message)

    exception = assert_raise(ParserError) { Parser.subject([['direction', 'south']]) }
    assert_equal('Expected a verb next.', exception.message)

    exception = assert_raise(ParserError) { Parser.subject([['direction', 'south']]) }
    assert_equal('Expected a verb next.', exception.message)
  end

  def test_parser_sentence()
    sentence = Parser.sentence(Lexicon.scan('run'))
    assert_equal('run', sentence.verb)
    assert_equal(nil, sentence.object)
    assert_equal('player', sentence.subject)

    sentence = Parser.sentence(Lexicon.scan('stab bear'))
    assert_equal('stab', sentence.verb)
    assert_equal('bear', sentence.object)
    assert_equal('player', sentence.subject)

    sentence = Parser.sentence(Lexicon.scan('stab bear 10 times'))
    assert_equal(10, sentence.numbers)

    sentence = Parser.sentence([['noun', 'bear'], ['verb', 'eat'], ['stop', 'the'], ['noun', 'honey']])
    assert_equal('eat', sentence.verb)
    assert_equal('honey', sentence.object)
    assert_equal('bear', sentence.subject)
  end
end