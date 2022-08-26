a = [1, 2, 3, 4, 5]

print a
puts a
p a

a << 6


p a.last
x = 1..100
p x.to_a
p x.to_a.shuffle

p z = x.to_a.shuffle
p z

x = (1..100).to_a
x.reverse!
p x

x = "a".."z"
p x.to_a

a.unshift("don")
a << 88
a.append("don")
p a.uniq
a.push("don2")
b = a.pop
p a
p b

b = a.join(", ")
p b
p b.split(", ")


c = %w(hello my name is don)
p c

c.each do |word|
  puts word
end

c.each { |word| puts word }
p "-".center(20, "-")
c.select { |word| puts word if word.length > 3 }
