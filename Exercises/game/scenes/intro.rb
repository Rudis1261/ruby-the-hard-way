class Intro < Scene
  # def initialize()
  #
  # end

  def enter
    puts <<-STORY
The year 4158. Allot has changed, allot has stayed the same. The nuclear 
fallout has come and gone, but not without casualties. It led to the 
collapse of man kind.

Not even 2% of the population survived. But somehow life continued and
some may say it's thriving once more. But it's much different. Large cities
have all but disappeared. As people fled for their lives they never looked
back. Knowing full well that they couldn't return for risk of becoming
deformed monsters, and suffering a slow painful death. 

Those that did, looted, plundered, and removed whatever they would stand to
carry. But they didn't do it very long. Eventually the fallout would get
them, and bring them to their knees.

The world has seen such sickness, hardship, hurt and only now do we start 
a new world. Some would say a simpler life. No governments, no structure. 
Just fellow man working together trading time or goods for everyday living.

You have never been any good at farming, or dealing with other people. So 
you had to resort to your only real skill to survive. Finding people or
killing those trying to stop you
    STORY

    puts "Do you dare continue? >"
    $stdin.gets.chomp
    return 'tavern'
  end
end