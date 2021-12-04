# Implement a method #substrings that takes a word as the first
# argument and then an array of valid substrings (your dictionary)
# as the second argument. It should return a hash listing each
# substring (case insensitive) that was found in the original string
# and how many times it was found.

# This method smells of :reek:NestedIterators
# @return [Hash]
def substrings(text, dictionary)
  sub_strings = Hash.new(0)
  dictionary.each do |allowed_string|
    text.downcase.scan(/#{allowed_string}/) { |word| sub_strings[word] += 1 if word }
  end
  sub_strings
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
