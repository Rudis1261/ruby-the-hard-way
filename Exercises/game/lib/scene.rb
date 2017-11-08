class Scene
  def death
    file_name = self.class.to_s.downcase
    File.open("./deaths/#{file_name}.txt") { |file| puts file.read() }
    return 'death'
  end

  def message
    file_name = self.class.to_s.downcase
    File.open("./stories/#{file_name}.txt") { |file| puts file.read() }
  end

  def enter
    puts "SCENE: start not configured"
    exit(1)
  end

  def choices(options)
    if options
      puts " "
      options.each_with_index { |option, index| puts "  (#{index + 1}) #{option}\n\n"}
      puts " "
    end
  end
end