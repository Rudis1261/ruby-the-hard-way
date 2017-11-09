class City < Scene
  def enter
    message

    choices([
      "Order an Ale from the barmaid, and when she brings it. Ask her if she knows of anyone making excellent knives.",
      "You stroll up to the bartender, and ask him if he has seen you best friend Toren the blacksmith",
      "You sit and wait to see if you get any info that might help.",
      "You use the picture Toren's wife gave you, and see if he is by any chance in here with you."
    ])

    action = Prompt.ask('City').to_i

    if !(1..4).include?(action)
      return Prompt.invalid_option 'city'
    end

    case action
      when 1
        puts 'She touches your shoulder, as she brings your Ale. When you mention Toren, she storms off in a huff'
        'city'
      when 2
        puts 'The bartender looks you square in the face and grunts. The waitress comes over, and tells you hes tongue was cut out by bandits'
        'city'
      when 3
        death
      when 4
        puts "Toren walks in, you instantly recognize him. His wife will be so glad you have found him.\n\nYou promptly deliver Toren to his wife, and collected your reward"
        'finish'
    end
  end
end