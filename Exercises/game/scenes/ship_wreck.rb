class ShipWreck < Scene
  def enter

    message

    action = Prompt.ask('Ship Wreck').to_i

    if !(1..2).include?(action)
      return Prompt.invalid_option 'ship_wreck'
    end

    return 'ship_wreck'
  end
end