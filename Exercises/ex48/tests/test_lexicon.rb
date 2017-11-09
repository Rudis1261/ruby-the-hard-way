require './lib/ex48/lexicon.rb'
require 'test/unit'

class TestLexicon < Test::Unit::TestCase
  def test_directions()
    assert_equal(Lexicon.scan("north"), [['direction', 'north']])
    result = Lexicon.scan("north south east")

    assert_equal(result, [
        ['direction', 'north'],
        ['direction', 'south'],
        ['direction', 'east']
    ])
  end

  def test_verbs()
    assert_equal(Lexicon.scan("go"), [['verb', 'go']])
    result = Lexicon.scan("go kill eat")

    assert_equal(result, [
        ['verb', 'go'],
        ['verb', 'kill'],
        ['verb', 'eat']
    ])
  end

  def test_nouns()
    assert_equal(Lexicon.scan("bear"), [['noun', 'bear']])
    result = Lexicon.scan("bear princess")

    assert_equal(result, [
        ['noun', 'bear'],
        ['noun', 'princess']
    ])
  end

  def test_numbers()
    assert_equal(Lexicon.scan("1234"), [['number', 1234]])
    result = Lexicon.scan("3 91234")

    assert_equal(result, [
        ['number', 3],
        ['number', 91234]
    ])
  end

  def test_error()
    assert_equal(Lexicon.scan("ASDFADFASDF"), [['error', "ASDFADFASDF"]])
    result = Lexicon.scan("bear IAS princess")

    assert_equal(result, [
        ['noun', 'bear'],
        ['error', 'IAS'],
        ['noun', 'princess']
    ])
  end

  def test_stop_words()
    assert_equal(Lexicon.scan("in the north"), [['direction', "north"]])
    result = Lexicon.scan("in the evening bear stop north of sector 12")

    assert_equal(result, [
        ['error', 'evening'],
        ['noun', 'bear'],
        ['verb', 'stop'],
        ['direction', 'north'],
        ['error', 'sector'],
        ['number', 12]
    ])
  end

  def test_uppercase()
    assert_equal(Lexicon.scan("in the North"), [['direction', "north"]])
    result = Lexicon.scan("In the Evening BEAR STOp North Of secTOR 12.0")

    assert_equal(result, [
        ['error', 'Evening'],
        ['noun', 'bear'],
        ['verb', 'stop'],
        ['direction', 'north'],
        ['error', 'secTOR'],
        ['error', '12.0']
    ])
  end
end