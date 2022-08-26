sample_hash = { 'a' => 1, 'b' => 2, 'c' => 3 }
my_details = { :name => "Don", :age => 30, 'height' => "6'2\"" }
puts my_details['height']

test_symbol_hash = {a: 1, b: 2, c: 3}
puts test_symbol_hash[:a]
p test_symbol_hash.keys
p test_symbol_hash.values

test_symbol_hash.each do |key, value|
  puts "#{key}: #{value}"
end
test_symbol_hash.each { |key, value| puts "#{key}: #{value}" }

a = :abc
p a
b = a

p a.equal? b

bb = test_symbol_hash.select { |key, value| value.is_a? Integer }
p bb

my_details.each { |k, v| my_details.delete(k) if v.is_a? Integer }
p my_details
