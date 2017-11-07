class Tavern < Scene
  def enter
    File.open('./stories/tavern.txt') { |file| puts file.read() }

    action = Prompt.ask('Tavern').to_i

    if !(1..5).include?(action)
      return Prompt.invalid_option('tavern')
    end

    case action
    when 1
      'city'
    when 2
      'gold_mine'
    when 3
      'ship_wreck'
    when 4
      'pirate_ship'
    when 5
      death
    end

  end
end