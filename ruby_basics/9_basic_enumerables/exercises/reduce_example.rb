word_list = %w[hola como estas eduardo yo estoy muy bien]
my_hash = word_list.each_with_object({}) do |word, hash|
  hash[word] = word.length
end

puts my_hash

my_hash2 = word_list.each_with_object({}) { |word, hash| hash[word] = word.length }
puts my_hash2
