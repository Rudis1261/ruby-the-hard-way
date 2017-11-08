class Intro < Scene
  def enter

    message

    Prompt.ask('Intro',"Do you dare continue?")
    return 'tavern'
  end
end