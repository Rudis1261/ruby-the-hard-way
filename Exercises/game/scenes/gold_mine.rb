class GoldMine < Scene
  def enter
    puts <<-MESSAGE
GoldMine
    MESSAGE

    Prompt.ask
    action = $stdin.gets.chomp.to_i
    if !(1..2).include?(action)
      return Prompt.invalid_option 'gold_mine'
    end

    return 'gold_mine'
  end
end