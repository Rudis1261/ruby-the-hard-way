class Tavern < Scene
  def enter
    message

    choices([
      "(Old Lady) I need to track down my Husband in the city. It's been over a month without so much as a word.\n      (Me) I should find out more...",
      "(Grimy welder to his friend) There's someone who found a vain of gold at the old mine, we should head out there and \"see\" what he has found. hahaha\n      (Me) Yes maybe we \"I\" should...",
      "(Bartender) I really need to head out to the Ship Wreck this weekend. I heard there's some amazing loot there\n      (Me) Why wait for the weekend, I can go there right now...",
      "(Hired gun to his friend) We could really use another hand on the ship, we need to set off in a day at most. Plenty looting and plundering to do...\n      (Me) This sounds like something I can do with my hands tied behind my back",
      "(Me) I will just mind my own business, and keep sitting here"
    ])

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