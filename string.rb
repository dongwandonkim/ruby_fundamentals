first_name = "David"
last_name = "Hernandez"
puts first_name + " " + last_name
puts "#{first_name} #{last_name}"

full_name = first_name + " " + last_name
p full_name.length
p full_name.reverse
p full_name.capitalize
p full_name.capitalize
p full_name.empty?
p full_name.include? "David"
p full_name.include? "david"

p sentence = "The quick brown fox jumps over the lazy dog"
p sentence.sub("lazy dog", "cat")

# puts "what is your first name?"
# first_name = gets.chomp
# puts "Thank you, your first name is #{first_name}"

# puts "Enter a number to multiply by 2"
# input = gets.chomp
# puts input.to_i * 2

p "Enter your first name"
first_name = gets.chomp
p "Enter your last name"
last_name = gets.chomp
p "Your full name is #{first_name} #{last_name}"
p "Your full name reversed is #{last_name.reverse} #{first_name.reverse}"

name_length = first_name.length + last_name.length
p "Your name has #{name_length} characters"

