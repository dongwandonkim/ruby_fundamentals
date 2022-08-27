dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
}

def get_city_names(hash)
  hash.each { |k, v| puts k }
end

def get_area_code(hash, key)
  hash[key]
end

loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"

  puts "Which city do you want the area code for?"

  get_city_names(dial_book)

  city = gets.chomp.downcase
  if dial_book.include?(city)
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
  else
    puts "You entered an invalid city name"
  end
  puts "-" * 25

end
