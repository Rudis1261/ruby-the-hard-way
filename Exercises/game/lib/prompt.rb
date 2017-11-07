module Prompt
  def self.ask(scene, question = "What do you do?")
    print "#{scene.upcase}: #{question} > "
    return $stdin.gets.chomp
  end

  def self.invalid_option(scene)
    puts "Invalid option provided"
    return scene
  end
end