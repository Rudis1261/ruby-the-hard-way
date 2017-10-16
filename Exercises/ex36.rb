module Prompt
    def self.ask(question, options)
        puts "\n#{question}"
        options.each { |option| puts option }
        print "> "
        $stdin.gets.chomp
    end
end

module Story
    def self.go(step)
        if step[:options] == false
            puts "\nGREAT SUCCESS!! #{step[:prompt]}\n\n"
            exit(0)
        end

        ask = Prompt.ask(step[:prompt], step[:options])
        if ask.to_i == step[:success].to_i
            if step[:done_message] != nil
                puts "\n#{step[:done_message]}\n"
            end
            new_step = eval(step[:done])
            Story.go(new_step)
        else
            Person.death step[:death_message]
        end
    end
end

module Person
    def self.death(message)
        puts "\nYou have died: #{message}\n\n"
        exit(1)
    end
end

module Stage_Ship
    @steps = {
        :step_1 => {
            :prompt => "Before you stands your long term project ship, \'Jessica\', a small but nimble ship you have built over the years. Enter the space ship",
            :options => [
                "1. Yes",
                "2. No",
            ],
            :death_message => "You trip while not paying attention, fall and break your neck",
            :success => "1",
            :done => "Stage_Ship.step(:step_2)",
            :done_message => "The doors open, you enter the ship",
        },
        :step_2 => {
            :prompt => "You look around",
            :options => [
                "1. Yes",
                "2. No",
            ],
            :death_message => "You trip while not paying attention, fall and break your neck",
            :success => "1",
            :done => "Stage_Ship.step(:done)",
            :done_message => "Nothing to see, just another night on this dusty rock!",
        },
        :done => {
            :prompt => "You have become a master, pilot your ship \'Jessica\' fighting off scum. And your legend lives on long after you are gone",
            :options => false,
        }
    }

    def self.start
        return @steps[:step_1]
    end

    def self.step(step)
        return @steps[step]
    end
end

module Stage_Deck

end

module Game
    def self.start
        puts "\nThe year is 2109, and the world is a much different place. In actual fact it's no longer a world. But cloth of worlds wound together. One layer atop another, infinitely wide, infinitely deep.\n"
        puts "\nYou find yourself \"A third class engineer\" on the outskirts of \'Bezura\', a trading post between junctions connecting 2 layers of the fabric of space.\n"

        Story.go(Stage_Ship.start)
    end
end

Game.start