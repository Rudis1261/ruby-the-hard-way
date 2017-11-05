class Y
    def initialize()
        puts "I am Y"
    end
end

class X < Y
    @param
    attr_accessor :param

    def initialize(message = nil)
        puts message ||= "I am X"
    end

    def talk(param = nil)
        if param != nil
            @param = param
        end
        puts @param
    end
end

test = X.new(gets.chomp)
test.talk("All the things I talk about")
test.param = "How now brown cow"
test.talk
