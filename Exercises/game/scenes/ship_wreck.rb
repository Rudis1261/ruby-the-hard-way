class ShipWreck < Scene
  def enter
    puts <<-MESSAGE
ShipWreck
    MESSAGE

    Prompt.ask
    action = $stdin.gets.chomp.to_i
    if !(1..2).include?(action)
      return Prompt.invalid_option 'ship_wreck'
    end

    return 'ship_wreck'
  end
end