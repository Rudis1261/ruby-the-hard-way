module Prompt
  def self.ask(question = "What do you do?")
    print "#{question} > "
  end

  def self.invalid_option(scene)
    puts "Invalid option provided"
    return scene
  end
end