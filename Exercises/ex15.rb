# Get the filename as a command line argument
filename = ARGV.first

# Create a pointer to the file and open it
txt = open(filename)

# Print out the read
puts "Here's your file #{filename}:"
print txt.read
txt.close()

# Ask the user for another file to read
puts "Here's the filename again: "

# Create a new pointer to the file provided
file_again = $stdin.gets.chomp
txt_again = open(file_again)

# Print the new file's contents
print txt_again.read
txt_again.close()
