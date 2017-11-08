class GoldMine < Scene
  def enter

    message

    choices([
        "You crack that door open, and look for the first piece of cover",
        "You back up, and leave back to the Tavern, this is someone elses battle"
    ])

    action = Prompt.ask('Gold Mine').to_i

    if !(1..2).include?(action)
      return Prompt.invalid_option 'gold_mine'
    end

    case action
      when 1
        death
      when 2
        'tavern'
    end
  end
end