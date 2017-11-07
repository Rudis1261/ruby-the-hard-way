class City < Scene
  def enter
    File.open('./stories/city.txt') { |file| puts file.read() }

    action = Prompt.ask('City').to_i

    if !(1..2).include?(action)
      return Prompt.invalid_option 'city'
    end

    return 'city'
  end
end