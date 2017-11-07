class GoldMine < Scene
  def enter
    File.open('./stories/gold_mine.txt') { |file| puts file.read() }

    action = Prompt.ask('Gold Mine').to_i

    if !(1..2).include?(action)
      return Prompt.invalid_option 'gold_mine'
    end

    return 'gold_mine'
  end
end