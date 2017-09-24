print "Give me a number: "
number = gets.chomp.to_f

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Want 10\% back, give me a number: "
number = gets.chomp.to_f

puts "Yay, you get #{'%.2f' % (number * 0.1)} back!"