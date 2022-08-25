puts 1 + 2
p 10 / 4

p 10.0 / 4
p 10 / 4.0
p 10/4.to_f
p (10/4).to_f # not working

x = 5
y = 10
p y / x

p "5" * 5
# p 5 * "5"
# p "5" * "5"
p "5".to_i * "5".to_i
p "-" * 20

p "-" * 20
20.times { print "-" }
10.times { puts rand(1..100) } # random number between 1 and 100
10.times {puts rand(10)} # 0 to 9
10.times {puts rand} # 0 to 1

puts "-".center(20, "-")
puts "Hello".center(20, "-")
puts "Hello".center(20)
