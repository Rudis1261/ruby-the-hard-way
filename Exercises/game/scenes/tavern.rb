class Tavern < Scene

  def death
    puts <<-MESSAGE
    
You sit some more, but start to feel dizzy. That's not normal, even for the
strongest ale in all the sectors.

You blink, blink some more, and before you realize what happened, you pass out.
Fariona must not have loved you after all.

    MESSAGE

    return 'death'
  end

  def enter
    puts <<-MESSAGE
    
You reach the "Slimy Bucket" tavern. Your usual hangout between jobs.

To tell the truth, this is where you get most of your work. Sometimes by 
accident overhearing a conversation. Sometimes you get sought out for your
reputation. 

But you like the place, and their ale is the best reward after a successful 
hunt.

You sit down in the corner, as per usual. This way you don't get surprised.
Fariona comes around with a freshly cracked just in time, and you slip her 
double the tokens for it. Secretly, you know she is the girl you would change
your ways for, but not today. Sorry my love.

As you sit there for the next hour or two, you overhear a couple of 
conversations, some may yet bring you some leads:

(1). (Old Lady) I need to track down my Husband in the city. It's been over a 
     month without so much as a word. 

     (Me) I should find out more...

(2). (Grimy welder) There's someone who found a vane of gold at the old mine, 
     we should head out there and "see" what he has found. hahahah

     (Me) Yes maybe we "I" should...

(3). (Bartender) I really need to head out to the Ship Wreck this weekend. I 
     heard there's some amazing loot there
  
     (Me) Why wait for the weekend, I can go there right now...

(4). (Hired Gun) We could really use another hand on the ship, we need to set
     off in a day at most. Plenty looting and plundering to do...

     (Me) This sounds like something I can do with my hands tied behind my back

(5). (Me) I will just mind my own business, and keep sitting here

    MESSAGE

    Prompt.ask
    action = $stdin.gets.chomp.to_i

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