puts "I will now count my chickens:"

puts "Hens #{25.0 + 30.0 / 6}"
puts "Roosters #{100.0 - 25.0 * 3.0 % 4}"

puts "Now I will count the eggs:"

puts 3.0 + 2.0 + 1.0 - 5.0 + 4.0 % 2 - 1.0 / 4.0 + 6.0

puts "Is is true that 3 + 2 < 5 - 7?"

puts 3.0 + 2.0 < 5.0 - 7.0

puts "What is 3 + 2? #{3.0 + 2.0}"
puts "What is 5 - 7? #{5.0 - 7.0}"

puts "Oh, what's why it's false."

puts "How about some more."

puts "Is it greater? #{5.0 > -2.0}"
puts "Is it greater or equal? #{5.0 >= -2.0}"
puts "Is it less or equal? #{5.0 <= -2.0}"

puts "Mine own calculations, find numbers divisible by 2,3,4 between 1 and 100"
#[*1..100].each do |number|
Array.new(100) {|i| i+1 }.each do |number|
    if (number % 2 == 0 && number % 3 == 0 && number % 4 == 0)
        puts "#{number} is divisible by 2,3,4"
    end
end