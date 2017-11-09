class ShipWreck < Scene
  def enter

    message

    choices([
      "You find your flash light and head into the ship",
      "You back up, and leave back to the Tavern, it's late and you don't want to be out here late"
    ])

    action = Prompt.ask('Ship Wreck').to_i

    if !(1..2).include?(action)
      return Prompt.invalid_option 'ship_wreck'
    end

    case action
      when 1
        death
      when 2
        'tavern'
    end
  end
end