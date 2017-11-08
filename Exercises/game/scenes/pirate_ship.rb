class PirateShip < Scene
  def enter

    message

    action = Prompt.ask('Pirate Ship').to_i

    if !(1..2).include?(action)
      return Prompt.invalid_option 'pirate_ship'
    end

    return 'pirate_ship'
  end
end