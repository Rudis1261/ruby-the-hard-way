class PirateShip < Scene
  def enter
    puts <<-MESSAGE
PirateShip
    MESSAGE

    Prompt.ask
    action = $stdin.gets.chomp.to_i
    if !(1..2).include?(action)
      return Prompt.invalid_option 'pirate_ship'
    end

    return 'pirate_ship'
  end
end