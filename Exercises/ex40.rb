# require "./mystuff.rb"
# MyStuff.apple();
# puts MyStuff::TANGERINE

# mystuff = {'apple' => "I AM APPLES!"}
# puts mystuff['apple']

require "./mystuffclass.rb"
thing = MyStuff.new()
thing.apple();
puts thing.tangerine