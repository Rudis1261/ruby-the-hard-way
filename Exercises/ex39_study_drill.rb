states = {
    "Johannesburg" => 'JHB',
    "Cape Town" => 'CPT',
    "Durban" => 'KZN'
}

states_map = states.invert

region_cities = {
    'JHB' => ['Sandton', 'Brakpan', 'Benoni'],
    'CPT' => ['Bellville', 'Brackenfell', 'Durbanville'],
    'KZN' => ['Amanzamtoti', 'Pinetown']
}

region_cities.each do |abbrev, cities|
    puts "#{abbrev} - Capital (#{states_map[abbrev]})"
    #puts "#{abbrev} - Capital (#{states.key(abbrev)})"
    puts "Has a couple of cities we know of:"
    cities.each { |city| puts "- #{city}" }
    puts "\n"
end