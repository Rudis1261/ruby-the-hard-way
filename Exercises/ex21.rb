def add(a, b)
    puts "ADDING #{a}  + #{b}"
    return a + b
end

def subtrack(a, b)
    puts "SUBTRACKING #{a} - #{b}"
    return a - b
end

def multiply(a, b)
    puts "MULTIPLYING #{a} * #{b}"
    return a * b
end

def devide(a, b)
    puts "DEVIDING #{a} / #{b}"
    return a / b
end

puts "Let's do some match with just functions!"

age = add(30, 2)
height = subtrack(188, 4)
weight = multiply(68, 2)
iq = devide(130, 2)

puts "Age: #{age}, Height: #{height}, weight: #{weight}, IQ: #{iq}"

# A puzzle for extra creadit, type it in anyway
puts "Here's a puzzle"

what = add(age, subtrack(height, multiply(weight, devide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"