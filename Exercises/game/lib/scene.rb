class Scene
  def death
    file_name = self.class.to_s.downcase
    File.open("./deaths/#{file_name}.txt") { |file| puts file.read() }
    return 'death'
  end

  def enter
    puts "SCENE: start not configured"
    exit(1)
  end
end