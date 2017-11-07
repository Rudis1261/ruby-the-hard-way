class City < Scene
  def enter
    puts <<-MESSAGE
City
    MESSAGE

    Prompt.ask
    action = $stdin.gets.chomp.to_i
    if !(1..2).include?(action)
      return Prompt.invalid_option 'city'
    end

    return 'city'
  end
end