class Intro < Scene
  def enter
    File.open('./stories/intro.txt') { |file| puts file.read() }
    Prompt.ask('Intro',"Do you dare continue?")
    return 'tavern'
  end
end