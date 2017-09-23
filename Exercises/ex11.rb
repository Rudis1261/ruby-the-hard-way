#print "How old are you? "
#age = gets.chomp

#print "How tall are you? "
#height = gets.chomp

#print "How much do you weigh? "
#weight = gets.chomp

#puts "So, you're #{age} old, #{height} tall and #{weight} heavy."


print "Give me a large number? "
number = gets.chomp.to_i

print "Give me smaller number? "
number_2 = gets.chomp.to_i

if (number < number_2)
    puts "Nope, the first number #{number} is not larger than #{number_2}"
    exit 0
end

number = number * 1.0
number_2 = number_2 * 1.0

puts """
Here's some thing about these numbers:
- #{number} * #{number_2} = #{number * number_2}
- #{number} / #{number_2} = #{number / number_2}
- #{number} % #{number_2} = #{number % number_2}
"""