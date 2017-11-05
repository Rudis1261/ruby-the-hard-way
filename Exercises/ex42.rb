class Animal
    attr_accessor :action
    ACTION = "Live"

    def loves_to
        return self.class::ACTION
    end
end

class Dog < Animal
    attr_accessor :name
    ACTION = "Bark"

    def initialize(name)
        @name = name
    end
end

class Cat < Animal
    attr_accessor :name
    ACTION = "Meow"

    def initialize(name)
        @name = name
    end
end

class Person
    attr_accessor :name, :pets

    def initialize(name)
        @name = name
        @pets = []
    end

    def pet= pet
        @pets << pet
    end
end

class Employee < Person
    attr_accessor :name, :salary

    def initialize(name, salary)
        super(name)
        @salary = salary
    end
end

class Fish < Animal
    attr_accessor :name
    ACTION = "Swim"

    def initialize(name)
        @name = name
    end
end

class Salmon < Fish
    def initialize(name)
        super(name)
    end
end

class Halibut < Fish
    def initialize(name)
        super(name)
    end
end

rover = Dog.new("Rover")
mary = Person.new("Mary")
mary.pet = rover

puts "#{mary.name} has a pet: #{mary.pets[0].name}, which is a #{mary.pets[0].class}"

frank = Employee.new("Frank", 120000)
nemo = Fish.new("Nemo")
frank.pet = nemo
frank.pet = rover

puts "#{frank.name} makes $#{frank.salary}, so much that have has a pets:"
frank.pets.each do |pet|
    #puts pet.inspect
    puts "A #{pet.class} named #{pet.name}. #{pet.name} loves to #{pet.loves_to}"
end