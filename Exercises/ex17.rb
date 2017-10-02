from_file, to_file = ARGV

if (from_file == nil || to_file == nil)
    puts "Missing required command line arguments. 'ruby ex17.rb FromFile ToFile'"
    exit 1
end

puts "Copying from #{from_file} to #{to_file}"

File.open(to_file, 'w') { |f| f.write(File.read(from_file)) }
#open(to_file, 'w').write(open(from_file).read)
#
# # we could do these two on one line, how?
# in_file = open(from_file)
# indata = in_file.read
#
# puts "The input file is #{indata.length} bytes long"
#
# puts "Does the output file exist? #{File.exists?(to_file)}"
# puts "Ready, hit RETURN to continue, CTRL-C to abort."
# $stdin.gets
#
# out_file = open(to_file, 'w')
# out_file.write(indata)
#
# puts "Alright, all done."
# out_file.close
# in_file.close