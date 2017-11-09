class PirateShip < Scene
  def enter

    message

    choices([
        "You explain seeying the guys at the Tavern, and that you are here to join the gang",
        "You get down on your knees and beg forgivenes, and ask where the nearest town is",
        "In a kneejerk reaction, you draw your own weapon and shoot at the guard"
    ])

    action = Prompt.ask('Pirate Ship').to_i

    if !(1..2).include?(action)
      return Prompt.invalid_option 'pirate_ship'
    end

    case action
      when 1
        puts "\nThe guard lowers his gun. Asks if you aren't Boran the great bounty hunter? You say yes that's me.\n\nHe walks up to you and grabs your hand in a shake at the elbow and says: \"Welcome brother, we have been waiting for someone just like you!\""
        'finish'
      when 2
        'tavern'
      when 3
        death
    end
  end
end