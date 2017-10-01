filename = ARGV.first

if filename == nil
    puts "Missing required filename"
    exit 1
end

puts "Opening the file..."

target = open(filename)

puts "Reading file."
puts target.read

target.close