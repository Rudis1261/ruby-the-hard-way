option, value = ARGV

if (option == "help" || option == "-h" || option == nil)
    print """
  Simple Ruby ARGV application

  The options available are listed below:
   -h\t\t\t\tHelp
   -echo 'message'\t\tEcho back the message you provide
   -prompt 'message'\t\tPrompt me for a message


"""
end

if (option == '-echo')
    puts value
end

if (option == '-prompt')
    print "What would you like me to print: "
    puts $stdin.gets.chomp
end