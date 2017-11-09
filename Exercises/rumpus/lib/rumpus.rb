class Rumpus
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
end

require 'rumpus/version'
require 'rumpus/translator'
